elsif=~/Git/elsif.fr

journal() {
  destinationDirectory=$elsif/content/$(date +%G)/$(date +%U)
  if [ ! -d $destinationDirectory ]; then
    mkdir -p $destinationDirectory
  fi
  if [ -f /var/lock/journal.lock ]; then
    echo "journal déjà ouvert"
  else
    flock -n /var/lock/journal.lock ${EDITOR:-vi} $destinationDirectory/index.md
    rm -f /var/lock/journal.lock
  fi
}
