#---------------------------Git Setup and Config---------------------------#
git --version
#configuaration name and email -> is neccessory for begining
#git on your computer
git config --global user.name ""
git config --global user.email ""
git config --global core.editor ""
#make default value for diff -unified[number]
git config --global diff.context [value]
#set .gitignore file globaly for this computer configuration
#you must creat this file in path 
git config --global core.excludefile [.gitignore_global Path]
#---------------------------------------
# all configuration is in ~/.gitconfig 
# and the next or ~/.config/git/config 
#---------------------------------------
git config --system user.name ""
git config --system user.email ""
git config --system core.editor ""
#---------------------------------------
# all configuration is in /etc/gitconfig
#---------------------------------------

#---------------------Git Getting and Creating Projects----------------------#
git init
git clone [web URL]
#-----------------------------Working With Host------------------------------#
git pull
#---------------------------Git Basic Snapshotting---------------------------#
#adding file to staging index
git add [FileName]
#show staging index and working directory status
git status
#change the last command massage with git core.editor
git commit --amend 
#to see all commited
git rev-list --all --count
#untracking track file that commited
#this command need commit after oprate
git rm --cached [file-name]
#list all file in git added in depend on <options>
git ls-tree [SH1]
#show diffrent betweet remote and local that 
#that state that be push or no
#be shore that before run command make fetch all
git diff --stat --cached <alias-remote-name/branch-name>
#show all commit is in remote repository 
#note that be carfull that fetch repo
#run your command , this command just show SHA1
git rev-list --remotes

