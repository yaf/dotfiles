
elsif=~/Code/elsif.fr

commitAndPushElsif() {
  cd $elsif/ && git add -A && git commit -m "mise à jour automatique" && git push; cd -
}

gitodo(){ git log --grep="^TODO" | grep 'TODO' | sort --unique;}
gitfactu(){ git log --grep="^FACTURE(.*)/i" | grep 'FACTURE' | sort;}

todo() { ${EDITOR:-vi} $elsif/todo.md; }
agenda() { ${EDITOR:-vi} $elsif/agenda.md; }
livres() { ${EDITOR:-vi} $elsif/livres.js; }
journal() { ${EDITOR:-vi} ~/Scopyleft/le-jardin/journaux/`date +%Y`-`date +%m`-yannick.md; }

head -n 5 $elsif/agenda.md
echo "----8<-------8<-------8<-------8<-------8<-------8<-------8<-------8<-------"
head -n 5 $elsif/todo.md

