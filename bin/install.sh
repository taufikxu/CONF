LN_HOME=/Users/kunxu/Deps/CONF

rm -rf ~/.vim 
rm ~/.vimrc
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.tmux.theme.conf
rm ~/.dircolors
rm -rf ~/.vim/bundle/Vundle.vim
rm -rf $LN_HOME/zshrc/oh-my-zsh
# rm -rf ~/.ssh


ln -s $LN_HOME/vim ~/.vim
ln -s $LN_HOME/vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp $LN_HOME/data/dircolors ~/.dircolors
cp $LN_HOME/zshrc/zshrc_loader ~/.zshrc
git clone https://github.com/robbyrussell/oh-my-zsh.git $LN_HOME/zshrc/oh-my-zsh

ln -s $LN_HOME/tmux/tmux.theme.conf ~/.tmux.theme.conf
ln -s $LN_HOME/tmux/tmux.conf ~/.tmux.conf

