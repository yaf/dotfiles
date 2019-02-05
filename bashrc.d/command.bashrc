gitodo(){ git log --grep="^TODO" | grep 'TODO' | sort --unique;}

gitfactu(){ git log --grep="^FACTURE" | grep 'FACTURE' | sort;}

todo() { ${EDITOR:-vi} ~/.config/dotfiles/todo.md; }

journal(){ ${EDITOR:-vi} ~/Scopyleft/le-jardin/journaux/`date +%F`-yannick.md; }

agenda() { ${EDITOR:-vi} ~/.config/dotfiles/agenda.md; }

head -n 5 ~/.config/dotfiles/agenda.md
echo "----8<-------8<-------8<-------8<-------8<-------8<-------8<-------8<-------"
head -n 5 ~/.config/dotfiles/todo.md



