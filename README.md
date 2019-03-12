# internship fps

Repository for an internship project in the LMN as part of the
masters program "cognitive and integrative systems neuroscience".

### Background
In terms of our internship at the LMN (Laboratory for Multimodal Neuroimaging at the university of Marburg) we are reproducing a study by [Gao et al. (2018)](https://link.springer.com/article/10.1007/s00429-018-1630-4). According to the authors the experimental set-up promises a face-localizer that works more efficient than conventional face-localizers used in previous studies investigating the face perception network. Efficiency is improved in that MRI scan-times are halved whereas the signal-to-noise ratio (SNR) decreases. The approach is called Fast-periodic-stimulation (FPS) and differs from the conventional block design in several aspects, including experimental paradigm and data analysis (for more information, check the link above).

### Motivation
We want to reproduce the study by Gao et al. (2018) to see if we could find the same effects using a Fast-periodic-stimulation. To be fair, our study is far from being as representative as the original study due to the small number of participants in our study (n = ?). Our study is a pilot study with the aim of learning how to conduct experiments with a MRI-scanner, with the focus on data aquisition, data analysis and interpretation of the results. Besides, the study also fits well into the research field of the working group we are doing our internship in (LMN). As the face perception network is a topic of several publications of people belonging to the LMN this study may also contribute a little to future research of the group.

### Workflow
We first converted the raw dicom data into the nifti format using the docker container heudiconv
