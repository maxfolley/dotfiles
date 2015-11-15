#!/bin/sh

red="\033[1;31m"
green="\033[1;32m"
blue='\033[1;36m'

# The cutsring is a comment used to designate the end of custom logic
cutstring="DO NOT EDIT BELOW THIS LINE"

for name in *; do
  file="$PWD/$name"
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    # If not a symbolic link
    if [ ! -L "$target" ]; then
      cutline=`grep -n -m1 "$cutstring" "$target" | sed "s/:.*//"`
      # If cutline exists in target file attempt to copy updates to the end of that file
      if [ -n "$cutline" ]; then
        echo $green "Updating $target..."
        head -n $cutline "$target" > update_tmp
        startline=`sed '1!G;h;$!d' "$name" | grep -n -m1 "$cutstring" | sed "s/:.*//"`
        if [ -n "$startline" ]; then
          tail -n $startline "$name" >> update_tmp
        else
          cat "$name" >> update_tmp
        fi
        mv update_tmp "$target"
      else
        echo $red "WARNING: $target exists but is not a symlink."
      fi
    fi
  # If symlink or file doesn't exist 
  else
    if [ "$name" != 'install.sh' -a "$name" != 'README.md' ]; then
      echo $green "Creating $target"
      # If file contains cutstring, copy file to target location
      # This will allow for customization of the file outside of the repo
      if [ -n "$(grep "$cutstring" "$name")" ]; then
        cp "$file" "$target"
      # Create symlink to file in target location
      else
        ln -s "$file" "$target"
      fi
    fi
  fi 
done

tput sgr0 
if [ -e ~/.vim/bundle/vundle ]; then
  pushd ~/.vim/bundle/vundle
  git pull origin master
  popd
else
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

echo $blue"Installing vim bundles..."
vim +PluginInstall +qall
echo $green"Dotfiles installed."
tput sgr0 
