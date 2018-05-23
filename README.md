# vimrc

## install

1.克隆Vundle
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
2.打开vim,安装插件
```
$ vim
:PluginInstall
```
3.安装ctags,cscope
```
$ sudo yum install ctags
$ sudo yum install cscope
$ sudo yum install rtags
```
4.安装YouCompleteMe
```
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py --clang-completer
$ cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py ~/
```
