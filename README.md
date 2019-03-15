# internship fps

Repository for an internship project in the LMN as part of the
masters program "Cognitive and Integrative Systems Neuroscience".

### Background
In terms of our internship at the LMN (Laboratory for Multimodal Neuroimaging at the university of Marburg) we are reproducing a study by [Gao et al. (2018)](https://link.springer.com/article/10.1007/s00429-018-1630-4). According to the authors the experimental set-up promises a face-localizer that works more efficient than conventional face-localizers used in previous studies investigating the face perception network. Efficiency is improved in that MRI scan-times are halved whereas the signal-to-noise ratio (SNR) increases. The approach is called fast periodic stimulation (FPS) and differs from the conventional block design in several aspects, including experimental paradigm and data analysis (for more information, check the link above). In short, instead of using the information about the timing of the activation, participants are shown faces in a specific frequency. This is then used to extract the brain areas that respond in that frequency using a fast Fourier transform (FFT).

### Motivation
We want to reproduce the study by Gao et al. (2018) to see if we could find the same effects using the FPS approach. The study will not be representative  due to the small number of participants(n = ?). Our study is a pilot study with the aim of learning how to conduct experiments with a MRI-scanner. We focus on data acquisition, data analysis and interpretation of the results. Besides, the study also fits well into the research field of the working group we are doing our internship in (LMN). As the face perception network is a topic of several publications of people belonging to the LMN this study may also contribute a little to future research of the group.

### Workflow

Measures:
- Structural T1
- Structural T2
- Functional multiband
- Functional slab, covering occipital and temporal lobe
- Functional whole brain (for coregistration, just 2-5 images)

Upon measuring participants the following preprocessing steps were conducted:
1. Convert DICOMS into the BIDS format using [HeuDiConv](https://github.com/nipy/heudiconv)
2. Use [BIDS-validator](https://github.com/bids-standard/bids-validator) to check if the conversion was successful
3. Use [pydeface](https://github.com/poldracklab/pydeface) to deface NIfTI-files and thus de-identify the scans
4. Use [mriqc](https://github.com/poldracklab/mriqc) to do a quality check of the structural and functional images
5. Preprocessing of the anatomical images using [mindboggle](https://mindboggle.info/)
