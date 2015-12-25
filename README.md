# Joou-s-Config

## Vim Plugins

1. Install [Vundle](https://github.com/VundleVim/Vundle.vim) first.
2. Enter vim and `:VundleInstall`.
3. Use pathogen `curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim`.
4. Install [xptemplate](https://github.com/drmingdrmer/xptemplate) for super tab.
5. Install [Ctags/Taglist/Cscope/Winmanager/NERDTree/OmniCppComplete](http://blog.csdn.net/bokee/article/details/6633193)

## Clear backup files(~)

	find . -name "*~" > ToBeClear.sh
	chmod +x ToBeClear.sh
	(Add rm, sort multi-lines to one line by "shift j")
	./ToBeClear.sh
