#!/bin/sh
#set -e
# Generate Dockerfile
generate_docker(){
docker run --rm kaczmarj/neurodocker:master generate docker \
--base neurodebian:stretch-non-free \
--pkg-manager apt \
--install  fsl nano \
--add-to-entrypoint "source /etc/fsl/fsl.sh" \
--user=neuro \
--miniconda \
 conda_install="python=3.6 jupyter jupyterlab jupyter_contrib_nbextensions
         traits pandas matplotlib scikit-learn scikit-image seaborn nbformat nb_conda" \
 pip_install="https://github.com/nipy/nipype/tarball/master
        https://github.com/INCF/pybids/tarball/master
        nilearn nipy duecredit nitime
        nibabel" \
 create_env="neuro" \
 activate=true \
--run-bash 'source activate neuro && jupyter nbextension enable exercise2/main && jupyter nbextension enable spellchecker/main' \
--user=root \
--run 'mkdir /data && chmod 777 /data && chmod a+s /data' \
--run 'mkdir /output && chmod 777 /output && chmod a+s /output' \
--user=root \
--run 'chown -R neuro /home/neuro/' \
--run 'rm -rf /opt/conda/pkgs/*' \
--user=neuro \
--run 'mkdir -p ~/.jupyter && echo c.NotebookApp.ip = \"0.0.0.0\" > ~/.jupyter/jupyter_notebook_config.py' \
--workdir /home/neuro/ \
--cmd jupyter-notebook
}
generate_docker > Dockerfile
docker build -t fps .
