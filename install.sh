#!/bin/sh

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
cd ..
