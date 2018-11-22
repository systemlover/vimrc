# vimrc


## Requirements
```
# CentOS
sudo yum install cmake gcc-c++ make python3-devel
sudo yum install ctags the_silver_searcher

# Ubuntu
sudo apt install build-essential cmake python3-dev
sudo apt install ctags silversearcher-ag fonts-powerline

# macOS
brew install ctags the_silver_searcher
```


## Installation
```
git clone https://github.com/systemlover/vimrc ~/.vim
cd ~/.vim
ln -s ~/.vim/autoload/vim-pathogen/autoload/pathogen.vim ./autoload/pathogen.vim
ln -s ~/.vim/vimrc ~/.vimrc
git submodule update --init --recursive
python3 bundle/YouCompleteMe/install.py
```


## Updating
```
cd ~/.vim
git pull
git submodule update --init --recursive
```


## Customization
* https://github.com/scrooloose/nerdtree#faq
* https://github.com/airblade/vim-gitgutter#customisation
* https://github.com/ctrlpvim/ctrlp.vim#basic-options
* https://github.com/scrooloose/nerdcommenter#settings
* https://github.com/Valloric/YouCompleteMe#installation
* https://github.com/powerline/fonts#installation


## Reference
* https://vimawesome.com/
