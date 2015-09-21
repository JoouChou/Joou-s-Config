# Joou-s-Config

## Vim Plugins

* vim-plug: https://github.com/junegunn/vim-plug
  * seoul256: https://github.com/junegunn/seoul256.vim
  * vim-easy-align: https://github.com/junegunn/vim-easy-align
  * Nerdtree: https://github.com/scrooloose/nerdtree
* syntastic: https://github.com/scrooloose/syntastic
* xptemplate: https://github.com/drmingdrmer/xptemplate
* [Ctags/Taglist/Cscope/Winmanager/NERDTree/OmniCppComplete](http://blog.csdn.net/bokee/article/details/6633193)

## Clear backup files(~)

	find . -name "*~" > ToBeClear.sh
	chmod +x ToBeClear.sh
	(Add rm, sort multi-lines to one line by "shift j")
	./ToBeClear.sh
