#### git log -1 --format=%ct####
git config --global alias.lastCommitTime 'log -1 --format=%ct'
#### git log -1 --format=%cd ####
git config --global alias.lastCommitDate 'log -1 --format=%cd'
### git log --date=short --pretty=format:%ad | sort | uniq -c ###
git config --global alias.commitCountPerDays 'log --date=short --pretty=format:%ad | sort | uniq -c'
### $ git rev-list --count --since=yesterday --before=today HEAD ###
git config --global alias.commitCountToday 'rev-list --count --since=yesterday --before=today HEAD'
### git config --global --get-regexp alias ###
git config --global alias.aliasList "config --global --get-regexp alias"
