#!/bin/sh

mydir=$(pwd)

if [ -d ~/.vim ]
then
    echo "backing up vim/ dir"
    [ -d ~/.vimbak.d ] && rm -rf ~/.vimbak.d
    mv -f ~/.vim ~/.vimbak.d
fi

# check for curl
if [ $(dpkg-query -W -f='${Status}' curl 2>/dev/null | grep -c "ok") -eq 0 ];
then
    echo "installing curl";
    sudo apt-get install curl;
fi

# check for cmake
if [ $(dpkg-query -W -f='${Status}' cmake 2>/dev/null | grep -c "ok") -eq 0 ];
then
    echo "installing cmake";
    sudo apt-get install cmake;
fi

# pathogen
echo "installing pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle

# nerdtree
echo "installing nerdtree"
git clone https://github.com/scrooloose/nerdtree

# syntastic
echo "installing syntastic"
git clone https://github.com/scrooloose/syntastic

# vim-airline
echo "installing vim-airline"
git clone https://github.com/powerline/fonts && cd fonts
./install.sh
cd ~/.vim/bundle
git clone https://github.com/bling/vim-airline

# solarized
echo "installing solarized"
git clone https://github.com/altercation/vim-colors-solarized

# gitgutter
echo "installing gitgutter"
git clone https://github.com/airblade/vim-gitgutter

#deliminate
echo "installing deliminate"
git clone https://github.com/raimondi/delimitmate

# youcompleteme
echo "installing youcompleteme (this will take long)"
git clone https://github.com/valloric/youcompleteme
cd youcompleteme
git submodule update --init --recursive
./install.py

if [ -f ~/.vimrc ]
then
    echo "backing up vimrc"
    mv ~/.vimrc ~/.vimrc.bak
fi
yes | cp -f ${mydir}/.vimrc ~/.vimrc
if [ -f ~/.Xresources ]
then
    echo "backing up Xresources"
    mv ~/.Xresources ~/.Xresources.bak
fi
yes | cp -f ${mydir}/.Xresources ~/.Xresources
xrdb ~/.Xresources

echo "Done!"
