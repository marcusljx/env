#/bin/bash

PACKAGES=" 
	go\
	tilix\
	vim-enhanced
"

echo Installing packages: ${PACKAGES}

dnf update -y
sudo dnf install ${PACKAGES} -y
