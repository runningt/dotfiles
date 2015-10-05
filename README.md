##Dotfiles

My personal dotfiles. I heve created it to remember my settings, especially vim settings.

###Usage

1. Clone repository:
    * In git 1.6.5 or higher

            git clone --recursive git@github.com:runningt/dotfiles.git <some_directory>

    * In older git probably something like this

            git clone git@github.com:runningt/dotfiles.git <some_directory>
            cd <some_directory>
            git submodule init
            git submodule update

Note: submodules are configured to use ssh clone adress, so probably it's better to clone full repo using ssh.
It might be impossible to clone full repo using https.

1.  Backup old .vimrc and .vim

        cd
        mv .vimrc .vimrc.back
        mv .vim .vim.back

1. Link new .vimrc and .vim

        ln -fs <some_direcotry>/.vim
        ln -fs <some_directory>/.vimrc

1. Link modules you really wan't to autolad

        cd .vimrc/bundle
        ln -fs ../bundle_all/<module_to_load>
Some more (but not very much) info about `bundle*` directories in `.vim/bundle_loaded/bundle.md`

