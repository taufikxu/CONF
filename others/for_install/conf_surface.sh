LN_HOME=/mnt/d/CONF

rm -rf ~/.vim
rm ~/.vimrc
rm -rf ~/.oh-my-zsh
rm ~/.zshrc
rm ~/.tmux.theme.conf
rm ~/.tmux.conf

ln -s $LN_HOME/zshrc/zshrc_surface ~/.zshrc
ln -s $LN_HOME/vim ~/.vim
ln -s $LN_HOME/vim/vimrc ~/.vimrc
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp $LN_HOME/others/dircolors ~/.dircolors
# git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp $LN_HOME/zshrc/chao.zsh-theme ~/.oh-my-zsh/themes/


ln -s $LN_HOME/tmux/tmux.theme.conf ~/.tmux.theme.conf
ln -s $LN_HOME/tmux/tmux.conf ~/.tmux.conf

