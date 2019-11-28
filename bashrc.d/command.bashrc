
elsif=~/Code/elsif.fr

commitCommentAndPush() {
  cd $elsif/ && git add -A && git commit && git push; cd -
}

commitCommentUpdateAndPush() {
  cd $elsif/ && git add -A && git commit -m "mise à jour" && git push; cd -
}

gitodo() {
  git log --grep="^TODO" | grep 'TODO' | sort --unique;
}

gitfactu(){ git log --grep="^FACTURE(.*)/i" | grep 'FACTURE' | sort;}

todo() {
  ${EDITOR:-vi} $elsif/todo.md && commitCommentAndPush
}

agenda() {
  ${EDITOR:-vi} $elsif/agenda.md && commitCommentUpdateAndPush
}

livres() {
  ${EDITOR:-vi} $elsif/livres.js && commitCommentAndPush
}

head -n 5 $elsif/agenda.md
echo "----8<-------8<-------8<-------8<-------8<-------8<-------8<-------8<-------"
head -n 5 $elsif/todo.md

