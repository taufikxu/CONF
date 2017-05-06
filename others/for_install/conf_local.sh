LN_HOME=/home/kunxu/Linux/Remote/CONF/

rm -rf ~/.vim 
rm ~/.vimrc
rm ~/.zshrc
rm ~/.tmux.theme.conf
rm ~/.tmux.conf

ln -s $LN_HOME/zshrc/zshrc_local ~/.zshrc
ln -s $LN_HOME/vim ~/.vim
ln -s $LN_HOME/vim/vimrc ~/.vimrc


ln -s $LN_HOME/tmux/tmux.theme.conf ~/.tmux.theme.conf
ln -s $LN_HOME/tmux/tmux.conf ~/.tmux.conf
