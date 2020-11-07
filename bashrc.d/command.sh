elsif=~/Git/elsif.fr

commitCommentAndPush() {
  cd $elsif/ && git add -A && git commit && git push; cd -
}

commitCommentUpdateAndPush() {
  cd $elsif/ && git add -A && git commit -m "mise à jour" && git push; cd -
}

todo() {
  ${EDITOR:-vi} $elsif/content/boite-a-idee/index.md && commitCommentAndPush
}

livres() {
  ${EDITOR:-vi} $elsif/livres.js && commitCommentAndPush
}

