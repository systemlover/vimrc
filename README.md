# vimrc


## Requirements

#### Install dependent packages
```
# CentOS
sudo yum install cmake gcc-c++ make python3-devel
sudo yum install ctags the_silver_searcher

# Ubuntu
sudo apt install build-essential cmake python3-dev
sudo apt install ctags silversearcher-ag

# macOS
brew install vim --with-lua --with-override-system-vi
brew install cmake ctags the_silver_searcher
```

#### Install powerline fonts
```
# Ubuntu
sudo apt install fonts-powerline

# CentOS/macOS
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```
Open Preferences>Profiles>Text>Font  
Change font to "Meslo LG M Regular for Powerline"  


## Installation
```
git clone https://github.com/systemlover/vimrc ~/.vim
cd ~/.vim
ln -s ~/.vim/autoload/vim-pathogen/autoload/pathogen.vim ./autoload/pathogen.vim
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
