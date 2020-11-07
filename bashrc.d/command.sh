elsif=~/Git/elsif.fr

commitCommentAndPush() {
  cd $elsif/ && git add -A && git commit && git push; cd -
}

todo() {
  ${EDITOR:-vi} $elsif/content/boite-a-idee/index.md && commitCommentAndPush
}

livres() {
  ${EDITOR:-vi} $elsif/livres.js && commitCommentAndPush
}

