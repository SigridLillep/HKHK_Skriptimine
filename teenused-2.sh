#!/bin/bash
for teenus in apache2 ssh; do
	if systemctl is-active --quiet $teenus
	then
		echo "Teenus $teenus töötab!"
	else
		echo "Teenus $teenus ei tööta - käivitan .."
		sudo systemctl start "$teenus"

		#Kontrollin kas teenus läks tööle
		if systemctl is-active --quiet "$teenus"
		then
			echo "$teenus käivitati edukalt."
		else
			echo "Viga, $teenus ei käivitunud."
		fi
	fi
done
