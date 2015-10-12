##Dotfiles

My personal dotfiles. I heve created it to remember my settings, especially vim settings.

###Requirements

    * Vim>7
    * git 

####Reccomended
    * Vim >=7.4
    * git >=1.6.5
    * GNU make

###Usage

1. Clone repository:
    * In git 1.6.5 or higher

            git clone --recursive git@github.com:runningt/dotfiles.git <some_directory>

    * In older git probably something like this

            git clone git@github.com:runningt/dotfiles.git <dotfiles_directory>
            cd <some_directory>
            git submodule init
            git submodule update
Note: submodules are configured to use ssh clone adress, so probably it's better to clone full repo using ssh.
It might be impossible to clone full repo using https.

1. Use GNU make 
        
        cd <dotfiles_directory>
        make vim

You can also do every step manually:

1.  Backup old .vimrc and .vim

        make vim_backup
Or:

        cd
        mv .vimrc .vimrc.back
        mv .vim .vim.back

1. Link new .vimrc and .vim

        make vim_links
Or:
        
        cd
        ln -fs <dotfiles_direcotry>/.vim
        ln -fs <dotfiles_directory>/.vimrc


1. Link modules you want to autolad

        make vim_enable_<module_to_disable>
Or:

        cd .vimrc/bundle
        ln -fs ../bundle_all/<module_to_enable>


###Usage of bundle* directories

`bubdle_all` directory contains *all* vim plugins installed 

`bundle_loaded` directory contains only plugins really loaded by pathogen. 
It should contain symbolic links to selected plugins from `../bundle_all`

`bundle` is in fact a symbolic link to `../bundle_loaded` (to be compatible with pathogen)

To enable some module:

    make vim_enable_<module_to_enable>

To disable module:

    make vim_disable_<module_to_disable>
