#stash unstage modification 
git stash save "<stah message>"
#show stash list array message with detail
git stash list
#show stash summary 
git stash show <stash-name>
#show stash changed code
git stash show -p <stash-name>
#implemention all changes in stash
#to current branch and make stash empty
git stash pop 
#implemention all changes in stash 
#to current branch and keep stash content
git stash apply
#clear all stash 
git stash clear
#dropped latast stash -> delete
git stash drop <stash-name>