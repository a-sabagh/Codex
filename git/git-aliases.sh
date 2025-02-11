#### git log -1 --format=%ct####
git config --global alias.last-commit-time 'log -1 --format=%ct'
#### git log -1 --format=%cd ####
git config --global alias.last-commit-date 'log -1 --format=%cd'
### git log --date=short --pretty=format:%ad | sort | uniq -c ###
#commits-per-days
### $ git rev-list --count --since=yesterday --before=today HEAD ###
git config --global alias.today-commit-count 'rev-list --count --since=yesterday --before=today HEAD'
### git config --global --get-regexp alias ###
git config --global alias.alias-list "config --global --get-regexp alias"
