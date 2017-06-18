all: vim_links i3

i3: 
	ln -fs `pwd`/.i3 ~/.i3

vim: vim_backup vim_links
	
vim_backup:
	cd && \
	if [ -e .vim ] ; then mv -i .vim .vim.back ; fi && \
	if [ -e .vimrc ] ; then mv -i .vimrc .vimrc.back ; fi 

vim_links:
	ln -fs `pwd`/.vim ~/.vim
	ln -fs `pwd`/.vimrc ~/.vimrc

vim_enable_%:
	cd .vim/bundle_loaded && make enable_$*

vim_disable_%:
	cd .vim/bundle_loaded && make disable_$*
