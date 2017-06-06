#git diffrent from repository and working directory
git diff
#show number of line is add and number of line is removed
git diff --stat
#show diffrent line and unified number unchanged line
git diff --unified=0
#show changes that have been staged
git diff --cached
git diff --staged
#show diffrent between tow commit
git diff SH1..SH1
#show diffrente with color and showing excerpt
git diff --color-words
#show diffrence with ignoring space
git diff --ignore-all-space
#show diff with just name
git diff --name-only
#show diff with just name and status
git diff --name-status
#sho adding line in {} removing line in []
git diff --word-diff
#show diffrent between remote and local
#note that diffrent must be fetch to update
git diff <alias-remote/branch> <alias-remote/branch>
