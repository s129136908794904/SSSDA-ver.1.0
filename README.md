# Welcome to SSSDA-ver.1.0
 Here, the matlab files are released for calibrating SPMS spectra./n
 To run the calibration program, you should firstly install Matlab (version higher than 2021a) , and then install the parallel computing toolbox.After that, you could run StartCalibration.m to calibrate the spectra./n
 The SPMS spectra loaded should obey the same data structure as "MASS" variable given in "demoData.mat", in which a sub-domain named "set" contains information of particle size and sampling time. In MASS, "pkl" is the mass spectra. The first column of pkl is m/z, the second to forth columns are "peak area", "relative peak area", and "peak height". You could run the AverageSpectrumPlotter to check the average spectrum of your SPMS spectra./n
 A GUI form of SSSDA independent of Matlab is in progress, please wait for future releases...
