
commitAndPush() {
  cd ~/.config/dotfiles/ && git add -A && git commit -m "mise à jour" && git push; cd -
}

commitAndPushElsif() {
  cd ~/Code/elsif.fr/ && git add -A && git commit -m "mise à jour de l'agenda" && git push; cd -
}

gitodo(){ git log --grep="^TODO" | grep 'TODO' | sort --unique;}
gitfactu(){ git log --grep="^FACTURE(.*)/i" | grep 'FACTURE' | sort;}

todo() { ${EDITOR:-vi} ~/.config/dotfiles/todo.md; commitAndPush; }

agenda() { ${EDITOR:-vi} ~/Code/elsif.fr/agenda.md; commitAndPushElsif; }

livres() { ${EDITOR:-vi} ~/.config/dotfiles/livres.js; commitAndPush; }

head -n 5 ~/.config/dotfiles/agenda.md
echo "----8<-------8<-------8<-------8<-------8<-------8<-------8<-------8<-------"
head -n 5 ~/.config/dotfiles/todo.md

