gitodo(){ git log --grep="^TODO" | grep 'TODO' | sort --unique;}

gitfactu(){ git log --grep="^FACTURE(.*)/i" | grep 'FACTURE' | sort;}

todo() { ${EDITOR:-vi} ~/.config/dotfiles/todo.md; }

agenda() { ${EDITOR:-vi} ~/.config/dotfiles/agenda.md; cd ~/.config/dotfiles/ && git add -A && git commit -m "mise à jour" && git push && cd -; }

head -n 5 ~/.config/dotfiles/agenda.md
echo "----8<-------8<-------8<-------8<-------8<-------8<-------8<-------8<-------"
head -n 5 ~/.config/dotfiles/todo.md

