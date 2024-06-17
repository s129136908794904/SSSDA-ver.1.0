# Welcome to SSSDA ver.1.0
Welcome to the Standard-free Single-particle Spectra Data Analyzer. The basic matlab files for calibrating SPMS spectra are released here. 

# Prepare your data to be calibrated
A dataset, "demoData.mat", comprising 10,006 SPMS raw spectra of ambient particles (~2000 in resolution) is provided for testing, you can download it from the current repository. 
If you want to calibrte your own SPMS spectra, the data should be in the same structure as the "MASS" variable given in "demoData.mat", which contains two sub domains:
  1. The "set" contains information of particle size and sampling time.
  2. The "pkl" contains the mass spectra. In "pkl", the first column is m/z, the second to forth columns are "peak area", "relative peak area", and "peak     height", respectively. Additionallly, the raw m/z should be in 4 digits, regardless the value is inaccurate before calibration.

# Start the standard-free calibration
To run the calibration program, please follow the guidance below.
1. Install Matlab (version higher than 2021a). 
2. Install the "parallel computing toolbox" because the code is specifically designed for parallel computing.
3. Download the files in the release "v.1.0-alpha", then add all the files and subfolders to your Matlab working path. 
4. Load your raw data to be calibrated.
5. Run the following code in your matlab console:
      species_calied = start(species,targetAccuracy);
  Here, the parameter "species" should be changed to the varaible name of your loaded data; the "targetAccuracy" is the target accuracy of calibration, which have two options: "0.05" for achieving final accuracy of 500 ppm, and "integral" for achieving intergral accuracy. If your data is under ~2000 interms of mass resolution, please use "integral", otherwise please use "0.05". The calibrated mass spectra are contained in "species_calied".
  As an example, to calibrate the data in "demoData.mat", please run the following code in your matlab console:
      species_calied = start(MASS,"0.05");
 

# Additional notes
1. The current version of SSSDA is aimed for testing only. Many parameters, like the stepsize and the coefficient space in the optimization process are not open for tuning (we will make them accessiable in future releases). Further, the prototype dataset is not accessiable, which will become modifiable in future releases.
2. A GUI form of SSSDA is in progress, which will include modules like spectra clustering (ART-2a, etc.), single particle spectrum plotting, auto peak identification, similarity calculations, and timeseries analysis toolkits. Please wait in patience for future releases.
3. For any suggestions or cooperations, if you want to develop SSSDA with us, please contact the developer by e-mailing 12231091@mail.sustech.edu.cn, we are eager to receive your feedback.
