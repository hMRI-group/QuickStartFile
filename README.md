# QuickStartFile
Simple file to quick start the hMRI-toolbox:

It takes a processing path from the user as input and git clones the hMRI-toolbox (branch:master) and SPM12 (branch:main) into this path.
It also creates the hMRI folder in spm12/tools automatically and copies the redirect file from the install folder of hMRI-toolbox.

Inital test performed and seems to work, but comments welcome, the following are the improvements/possible concerns:

- should it also set the branch of the git-reps specified by the user?
- addpath is used but, does addpath add any folders that should not be on the path?
