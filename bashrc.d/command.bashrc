
commitAndPush() {
  cd ~/.config/dotfiles/ && git add -A && git commit -m "mise à jour" && git push; cd -
}

gitodo(){ git log --grep="^TODO" | grep 'TODO' | sort --unique;}
gitfactu(){ git log --grep="^FACTURE(.*)/i" | grep 'FACTURE' | sort;}

todo() { ${EDITOR:-vi} ~/.config/dotfiles/todo.md; commitAndPush; }
agenda() { ${EDITOR:-vi} ~/.config/dotfiles/agenda.md; commitAndPush; }
livres() { ${EDITOR:-vi} ~/.config/dotfiles/livres.json; commitAndPush; }

head -n 5 ~/.config/dotfiles/agenda.md
echo "----8<-------8<-------8<-------8<-------8<-------8<-------8<-------8<-------"
head -n 5 ~/.config/dotfiles/todo.md

