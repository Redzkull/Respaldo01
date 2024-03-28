#!/bin/bash

# Instala Vim y Vim-X11
sudo dnf install vim vim-X11

# Verifica si la instalación fue exitosa
if [ $? -eq 0 ]; then
    echo "Vim y Vim-X11 han sido instalados correctamente en tu sistema Fedora."
else
    echo "Hubo un problema durante la instalación de Vim y Vim-X11. Por favor, verifica los errores e inténtalo nuevamente."
fi



