
elsif=~/Code/elsif.fr
dotfiles=~/.config/dotfiles

commitAndPush() {
  cd $dotfiles/ && git add -A && git commit -m "mise à jour" && git push; cd -
}

commitAndPushElsif() {
  cd $elsif/ && git add -A && git commit -m "mise à jour de l'agenda" && git push; cd -
}

gitodo(){ git log --grep="^TODO" | grep 'TODO' | sort --unique;}
gitfactu(){ git log --grep="^FACTURE(.*)/i" | grep 'FACTURE' | sort;}

todo() { ${EDITOR:-vi} $dotfiles/todo.md; commitAndPush; }

agenda() { ${EDITOR:-vi} $elsif/agenda.md; commitAndPushElsif; }

livres() { ${EDITOR:-vi} $dotfiles/livres.js; commitAndPush; }

head -n 5 $elsif/agenda.md
echo "----8<-------8<-------8<-------8<-------8<-------8<-------8<-------8<-------"
head -n 5 $dotfiles/todo.md

