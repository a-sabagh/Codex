#show all branche
git branch
#create new branch
git branch <new branch name>
#switched to new branch
git checkout <branch name>
#create and switched to new branch
git checkout -b <new branch name>
#rename branch
git branch --move <old-name> <new-name>
git branch -m <old-name> <new-name>
#delete branch
git branch --delete <branch-name>
git branch -d <branch-name>
#force delete branch
git branch -D <branch-name>
#compare to branch
git diff <branch-name>..<branch-name>
#show all branch that push in git hosting services
git branch -r
#show all branch in host services and local 
git branch -a
