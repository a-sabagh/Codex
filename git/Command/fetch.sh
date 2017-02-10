#Download objects and refs from another repository
git fetch
#Append ref names and object names of fetched refs
#to the existing contents of .git/FETCH_HEAD.
#Without this option old data in.git/FETCH_HEAD will be overwritten.
git fetch --all