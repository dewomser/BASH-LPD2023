#!/bin/bash

# Definieren Sie eine Liste von Befehlen
commands=("top" "htop" "bpytop" "neofetch" "cmatrix" "asciiquarium" "figlet LPD 23-1 HS-Worms"  "sl"   "cowsay Hallo" "ponysay hallo" "lolcat /var/log/Xorg.1.log" "curl wttr.in/Worms
")
# "hollywood"
# Hauptmenüschleife
while true; do
	echo "Wähle einen Befehl aus der Liste aus:"
	select cmd in "${commands[@]}"; do
		if [ -n "$cmd" ]; then
			# Führen Sie den ausgewählten Befehl aus
			$cmd
			break
		else
			echo "Ungültige Auswahl. Bitte versuche es erneut."
		fi
	done
done
