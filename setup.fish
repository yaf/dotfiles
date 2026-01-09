#!/bin/fish

set DOTFILES_DIR ~/.config/dotfiles
cd $DOTFILES_DIR

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/backup

if test -f ~/.vimrc 
  set backup_filename ~/.vimrc.bak;
  echo ".vimrc found. move it to $backup_filename"
  mv ~/.vimrc $backup_filename;
  mkdir -p ~/.vim/pack
end
ln -s $DOTFILES_DIR/vimrc ~/.vimrc

if test -f ~/.bashrc
  set backup_filename ~/.bashrc.bak;
  echo ".bashrc found. move it to $backup_filename"
  mv ~/.bashrc $backup_filename;
end
ln -s $DOTFILES_DIR/bashrc ~/.bashrc

if test -d ~/.bashrc.d; and not test -L ~/.bashrc.d
  set backup_filename ~/.bashrc.d.bak;
  echo ".bashrc.d found. move it to $backup_filename"
  mv ~/.bashrc.d $backup_filename;
end

if not test -L ~/.bashrc.d
  echo "~/.bashrc.d n'est pas un lien symbolique"
  ln -s $DOTFILES_DIR/bashrc.d ~/.bashrc.d
end

if test -f ~/.gitconfig
  set backup_filename ~/.gitconfig.bak;
  echo ".gitconfig found. move it to $backup_filename"
  mv ~/.gitconfig $backup_filename;
end
ln -s $DOTFILES_DIR/gitconfig ~/.gitconfig

if test -f ~/.gitignore
  set backup_filename ~/.gitignore.bak;
  echo ".gitignore found. move it to $backup_filename"
  mv ~/.gitignore $backup_filename;
end
ln -s $DOTFILES_DIR/gitignore ~/.gitignore

if test -f ~/.tmux.conf
  set backup_filename ~/.tmux.conf.bak;
  echo ".tmux.conf found. move it to $backup_filename"
  mv ~/.tmux.conf $backup_filename;
end
ln -s $DOTFILES_DIR/tmux.conf ~/.tmux.conf

if test -d ~/.config/fish; and not test -L ~/.config/fish
  set backup_filename ~/.config/fish.bak;
  echo ".config/fish found. move it to $backup_filename"
  mv ~/.config/fish $backup_filename;
end

if not test -L ~/.config/fish
  ln -s $DOTFILES_DIR/fish ~/.config/fish
end

if test -d ~/.config/kitty
  set backup_filename ~/.config/kitty.bak;
  echo ".config/kitty found. move it to $backup_filename"
  mv ~/.config/kitty $backup_filename;
end
ln -s $DOTFILES_DIR/kitty ~/.config/kitty

if test -d ~/.config/helix
  set backup_filename ~/.config/helix.bak;
  echo ".config/helix found. move it to $backup_filename"
  mv ~/.config/helix $backup_filename;
fi
ln -s $DOTFILES_DIR/helix ~/.config/helix

