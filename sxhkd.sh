#!/bin/bash
#instalacion de sxhkd

sudo dnf install sxhkd -y 
touch ~/.config/sxhkd/sxhkdrc

# Define el contenido que deseas agregar al archivo
contenido="# Ejectutadar Rofi
super + space
	rofi -show
# Temas Rofi
super + 1
	rofi-theme-selector
# Visual Estudio
super + v
	code
# Tilix
super + t
	tilix
# Navegador Brave
super + b
	brave-browser
# Gestor de Archivos
super + a
	thunar"

# Ruta al archivo sxhkdrc
archivo_sxhkdrc=~/.config/sxhkd/sxhkdrc

# Añade el contenido al archivo sxhkdrc
echo "$contenido" >> "$archivo_sxhkdrc"

