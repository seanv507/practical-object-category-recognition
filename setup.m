% SETUP  Add the required search paths to MATLAB
addpath('~/vlfeat/toolbox')
if exist('vl_version') ~= 3
  vl_setup % octave din't work with run('vl_setup')
end
