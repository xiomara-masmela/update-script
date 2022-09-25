#!/bin/bash

#Define colours 
red=$( tput setaf 1 );
yellow=$( tput setaf 3 );
green=$( tput setaf 2 );
normal=$( tput sgr 0 );

echo $(date) # Will print the output of date command

#Remove node modules
echo "${green}Uninstalling node modules${normal}"
brew uninstall node

# Update homebrew
echo "${green}Updating Home Brew${normal}"
brew update
brew upgrade

#Cache cleanup
echo "${green}Cleaning cache${normal}"
brew cleanup

# Installing node 
echo "${green}Installing Node${normal}"
brew install node
sudo chown -R $(whoami) /usr/local
brew link --overwrite node
brew postinstall node

#Run doctor
echo "${green}Checking for issues${normal}"
brew doctor

