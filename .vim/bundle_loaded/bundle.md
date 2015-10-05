###Usage of bundle* directories

`bubdle_all` directory contains *all* vim plugins installed 

`bundle_loaded` directory contains only plugins really loaded by pathogen. 
It should contain symbolic links to selected plugins from `../bundle_all`

`bundle` is in fact a symbolic link to `../bundle_loaded` (to be compatible with pathogen)
