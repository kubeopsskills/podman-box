#!/bin/bash
echo "Installing sshpass"
brew install https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb

echo "Installing virtualbox"
brew install virtualbox --cask

echo "Installing vagrant"
brew install vagrant --cask
brew install vagrant-manager --cask