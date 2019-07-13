1. Install vim from brew:  
brew install vim  

2. Install plugin control:  
cd ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim  

3. Copy existing .vimrc, .gvimrc to ~/

4. Open vim then install plugin:  
:PluginInstall

5. Install ctags
brew install --HEAD universal-ctags/universal-ctags/universal-ctags  
Usage: ctags -R    
then Ctrl ] to jump go, Ctrl t to jump back




