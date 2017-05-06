LN_HOME=/mnt/e/Remote/conf
rm -rf $HOME/.vim 

rm $HOME/.vimrc
rm -rf $HOME/.oh-my-zsh
rm $HOME/.zshrc
rm $HOME/.tmux.theme.conf
rm $HOME/.tmux.conf
rm $HOME/.dircolors

ln -s $LN_HOME/zshrc_desktop $HOME/.zshrc
ln -s $LN_HOME/vim $HOME/.vim
cp -r $LN_HOME/oh-my-zsh $HOME/.oh-my-zsh
ln -s $LN_HOME/vim/vimrc $HOME/.vimrc
ln -s $LN_HOME/others/dircolors $HOME/.dircolors


ln -s $LN_HOME/tmux/tmux.theme.conf $HOME/.tmux.theme.conf
ln -s $LN_HOME/tmux/tmux.conf $HOME/.tmux.conf


chmod -R 755 $HOME/.oh-my-zsh
