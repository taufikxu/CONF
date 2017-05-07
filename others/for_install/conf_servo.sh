LN_HOME=/home/kunxu/CONF

rm ~/mfs
rm -rf ~/.vim 
rm ~/.vimrc
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.tmux.theme.conf
rm ~/.jupyter
rm ~/.dircolors
rm -rf ~/.oh-my-zsh
rm -rf ~/.ssh


ln -s /mfs/kunxu/ ~/mfs
ln -s $LN_HOME/vim ~/.vim
ln -s $LN_HOME/vim/vimrc ~/.vimrc
ln -s $LN_HOME/jupyter ~/.jupyter
ln -s $LN_HOME/.ssh ~/.ssh
cp $LN_HOME/others/dircolors ~/.dircolors
cp $LN_HOME/zshrc/zshrc_loader ~/.zshrc
cp $LN_HOME/zshrc/chao.zsh-theme $LN_HOME/zshrc/oh-my-zsh/themes/


ln -s $LN_HOME/tmux/tmux.theme.conf ~/.tmux.theme.conf
ln -s $LN_HOME/tmux/tmux.conf ~/.tmux.conf

