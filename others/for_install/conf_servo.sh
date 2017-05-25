LN_HOME=/home/kunxu/CONF

rm ~/mfs
rm -rf ~/.vim 
rm ~/.vimrc
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.tmux.theme.conf
rm ~/.dircolors
rm -rf ~/.oh-my-zsh
# rm -rf ~/.ssh


ln -s /mfs/kunxu/ ~/mfs
ln -s $LN_HOME/vim ~/.vim
ln -s $LN_HOME/vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# ln -s /home/kunxu/mfs/ENV/.ssh ~/.ssh
cp $LN_HOME/others/dircolors ~/.dircolors
cp $LN_HOME/zshrc/zshrc_loader ~/.zshrc
git clone https://github.com/robbyrussell/oh-my-zsh.git $LN_HOME/zshrc/oh-my-zsh
cp $LN_HOME/zshrc/chao.zsh-theme $LN_HOME/zshrc/oh-my-zsh/themes/


ln -s $LN_HOME/tmux/tmux.theme.conf ~/.tmux.theme.conf
ln -s $LN_HOME/tmux/tmux.conf ~/.tmux.conf

