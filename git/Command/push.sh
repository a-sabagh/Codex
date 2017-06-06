git push
#Git will set up the tracking information during the push.
git push -u origin <branch name>
#To remove a remote branch (if you know what you are doing!)
git push origin :the_remote_branch
#deleting a remote branch (after Git 1.7)
git push origin --delete name_of_the_remote_branch
#To push the current branch and set the remote as upstream, use
git push --set-upstream origin <branch-name>