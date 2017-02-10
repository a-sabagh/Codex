#show log in one line with SHA1
git log --oneline
#show log --oneline and exclude with number <option>
git log --oneline -n
#show log since date
git log --since="<numeric date option>"
#input can be string like yesterday
git log --since="<string date option>"
#oprate Contrary to --since
git log --until="<numeric date option>"
#input option can be string like "2 week ago"
git log --untill="<string date option>"
#oprating like until
git log --before=""
#oprating like since
git log --after
#show log status that means number line is change
git log --stat
#show the summary of action , delete mode or create mode
git log --summary
#show log with author
git log --author="<author option>"
#general regular expresion
git log --grep="<general regular expression>"
#log all commit that is between to SH1
git log [SH1]..[SH1]
#show log with graph
git log --graph
#show detail (HEAD , master) in log
git log --decorate
#show format like -> mediume , full , fuller , oneline
git log --format="<option>"

