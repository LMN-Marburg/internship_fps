# internship fps

Repository for an internship project in the LMN as part of the
masters program "cognitive and integrative systems neuroscience".

### Background
In terms of our internship at the LMN (Laboratory for Multimodal Neuroimaging at the university of Marburg) we are reproducing a study by [Gao et al. (2018)](https://link.springer.com/article/10.1007/s00429-018-1630-4). According to the authors the experimental set-up promises a face-localizer that works more efficient than conventional face-localizers used in previous studies investigating the face perception network. Efficiency is improved in that MRI scan-times are halved whereas the signal-to-noise ratio (SNR) decreases. The approach is called Fast-periodic-stimulation (FPS) and differs from the conventional block design in several aspects, including data analysis.

### Motivation
We want to reproduce the study by Gao et al. (2018).

### Workflow
We first converted the raw dicom data into the nifti format using the docker container heudiconv
