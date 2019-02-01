todo(){ cd ~/.todo||return 1&& l=$(ls -1t|head -n1)&&t=$(date +%Y%m%d);[[ "$1" == "last" ]]&&cp $l $t; ${EDITOR:-vi} $t;cd -;}
gitodo(){ git log --grep="^TODO" | grep 'TODO' | sort --unique;}
wiki() { ${EDITOR:-vi} ~/.config/dotfiles/wiki.md; }


