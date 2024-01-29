function hmri_start(processpath)

%git clone SPM12 (branch: main) and hMRI-toolbox (branch: master)
gitclone('https://github.com/hMRI-group/hMRI-toolbox.git',fullfile(processpath, 'hMRI-toolbox'))
gitclone('https://github.com/spm/spm12.git',fullfile(processpath, 'spm12'))

%form the required hMRI-toolbox and SPM12 paths for further use 
pathHMRI = fullfile(processpath, 'hMRI-toolbox');
pathSPM = fullfile(processpath, 'spm12');
pathTools = fullfile(pathSPM, 'toolbox');
mkdir(pathTools, 'hMRI');
pathHmriTools = fullfile(pathSPM, 'toolbox', 'hMRI');
pathredir = fullfile(pathHMRI, 'install', 'tbx_cfg_hmri_redirect.m');
copyfile(pathredir, pathHmriTools);

%addpath the required folders
addpath(pathHMRI)
addpath(pathSPM)

%exec spm fmri to add the path some useful commands
%and to check hMRI-toolbox is correctly loaded
spm fmri