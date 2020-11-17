#!/bin/bash

echo "$(pwd)" | grep dotfiles > /dev/null

exit_code=$?

if [ $exit_code != 0 ]
then
  echo "ERROR! You need to be in dotfiles/. Please cd to it."
else
  \rm ./.DS_Store 2> /dev/null
  \mkdir git script
  \mv ./.git ./git/; \mv ./apply.sh ./script/ # Temporarily store .git and this script file in a sub folder
  \cp -v ./.* ~/ 2> /dev/null # Recursively copy all the files in the current directory to Home
  \mv ./git/.git ./; \mv  ./script/apply.sh ./ # Move .git and script back
  \rm -rf ./git/ ./script/ # Delete the temporary directories
  echo "Process completed successfully!"
fi
