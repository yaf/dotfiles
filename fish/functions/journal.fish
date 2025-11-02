function journal
  set destinationDirectory $site/content/(date +%G)/(date +%m)
  if not test -d $destinationDirectory
    mkdir -p $destinationDirectory
  end
  if test -f /var/lock/journal.lock
    echo "journal déjà ouvert"
  else
    flock -n /var/lock/journal.lock vim $destinationDirectory/index.md
    rm -f /var/lock/journal.lock
  end
end

