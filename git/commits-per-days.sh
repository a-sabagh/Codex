#!/bin/bash

# Check if the directory is a git repository
if [ ! -d ".git" ]; then
  echo "This is not a Git repository!"
  exit 1
fi

# Get the color codes using tput (for better compatibility)
green=$(tput setaf 2)
bold_green=$(tput setaf 2; tput bold)
reset=$(tput sgr0)
# Header
echo -e "\n════════════════════════════════════════════════"
echo -e "     Commit Count Per Day (Last Year)             "
echo -e "════════════════════════════════════════════════\n"

# Run the git log command to get commit dates and count them per day
git log --since='1 year ago' --pretty=format:'%ad' --date=short |
  sort |
  uniq -c |
  sort -k2,2 |  # Sort by date (column 2)
  while read count date; do
    # Choose color based on commit count (more commits = greener)
    if [ "$count" -le 5 ]; then
      color=$green
    elif [ "$count" -le 10 ]; then
      color=$green
    elif [ "$count" -le 20 ]; then
      color=$bold_green
    else
      color=$bold_green
    fi

    # Print the date and commit count with color
    printf "%s%-12s : %s%s \n" "$color" "$date" "$count" "$reset"
  done

echo -e "\n════════════════════════════════════════════════\n"
