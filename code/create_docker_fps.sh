!/bin/sh
#interpreter for the script, could be something else like python etc.

docker run --rm kaczmarj/neurodocker:master generate docker \
    --base=neurodebian:stretch-non-free \
    --pkg-manager=apt \
    --install fsl nano \#nano: minimal script editor
    --add-to-entrypoint='source /etc/fsl/fsl.sh' \
    --user=neuro \
    --workdir='/home/neuro' \
    --miniconda \
      conda_install="python=3.6 jupyter jupyterlab jupyter_contrib_nbextensions
                     matplotlib scikit-learn seaborn nipype scipy" \
      pip_install="nilearn" \
      create_env="neuro_py36" \
      activate=true \
    --run 'mkdir -p ~/.jupyter && echo c.NotebookApp.ip = \"0.0.0.0\" > ~/.jupyter/jupyter_notebook_config.py' \
    #configuration for jupyter notebook server
    #run-> run this in the shell
    --workdir /home/neuro \
    --cmd jupyter-notebook
