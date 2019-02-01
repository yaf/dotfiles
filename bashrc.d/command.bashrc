
gitodo(){ git log --grep="^TODO" | grep 'TODO' | sort --unique;}

todo() { ${EDITOR:-vi} ~/.config/dotfiles/todo.md; }

agenda() { ${EDITOR:-vi} ~/.config/dotfiles/agenda.md; }
head ~/.config/dotfiles/agenda.md


