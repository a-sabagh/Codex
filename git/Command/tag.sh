#Create Tag
git tag -a <tagname> -m "<message>" <commithash>
#Delete tag
git tag -d <tagname>
git push <remotename> --delete <tagname>
#List tags
git tag
git show <tagname>
#Check out tags
git checkout <tagname>
#Push tags
git push <remote> --tags
