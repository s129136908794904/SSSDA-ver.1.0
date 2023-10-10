% Welcome to the code for SSSDA ver.1.0
% A GUI tool is developing, please wait for furture releases...
% To calibrate the spectra of SPMS, please go through all the following lines

% 1. Initiation and Localization of the Calibration
% settings
%%% 1.1 spectrum type: 
% set 2 for peak area, 3 for realtive peakk area, 4 for peak height spectra
type = 3;
%%% 1.2 the shifting range of a0, a1 in the calibration function
% default value is
%   shift_a0 = 0.1;
%   shift_a1 = 0.01;
shift_a0 = 0.1;
shift_a1 = 0.01;

% 2. Choose the data you want to calibrate
% Rename the right-hand-side to your data name
% You could also load "demoData" for a test
species = MASS;

% 3. Strat calibration, the target accuracy is 500 ppm
% directly run the following lines without modification
calibrated = Cali_calibration(species,type,shift_a0,shift_a1);
clear shift_a0 shift_a1 species type
%%%
%   The calibration is compeleted!