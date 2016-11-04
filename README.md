# vimrc

#install

1.克隆Vundle

$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

2.打开vim,安装插件

$ vim

:PluginInstall

3.安装颜色主题

$ cp -r ~/.vim/bundle/vim-colors-solarized/colors ~/.vim

4.安装ctags,cscope

$ sudo apt-get install ctags

$ sudo apt-get install cscope

5.安装YouCompleteMe

cd ~/.vim/bundle/YouCompleteMe

./install.py --clang-completer --system-libclang --system-boost

cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py ~/
