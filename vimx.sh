#!/bin/bash

# Instala Vim y Vim-X11
sudo dnf install vim vim-X11

# Verifica si la instalación fue exitosa
if [ $? -eq 0 ]; then
    echo "Vim y Vim-X11 han sido instalados correctamente en tu sistema Fedora."
else
    echo "Hubo un problema durante la instalación de Vim y Vim-X11. Por favor, verifica los errores e inténtalo nuevamente."
fi

mkdir ~/.vimrc 

# Texto que deseas agregar al archivo ~/.vimrc

config_text="set number
syntax enable
set noshowmode
colorscheme desert
nnoremap <C-s> :x!<CR>
set clipboard=unnamedplus \"Para poder usar el copiar y pegar
set mouse=a
set relativenumber   \" Muestra números relativos
set numberwidth=4    \" Ancho de columna para números de línea
set mouse=r	\" Para interactuar con el raton en vim
set noswapfile

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'momota/cisco.vim'

call plug#end()
"

# Ruta al archivo ~/.vimrc
vimrc_file=~/.vimrc

# Agregar el texto al final del archivo ~/.vimrc
echo "$config_text" >> "$vimrc_file"

