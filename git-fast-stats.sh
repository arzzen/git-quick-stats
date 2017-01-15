#!/bin/bash

HEIGHT=15
WIDTH=50
CHOICE_HEIGHT=10
BACKTITLE="Various statistics in git repository - all in one place"
TITLE="GIT's various statistics"
MENU="Choose one of the following options:"

OPTIONS=(
    1 "Suggest code reviewers"
    2 "Detailed stats per author"
    3 "Commits per day"
    4 "Commits per author"
    5 "Get own stats for the day"
    6 "List all contributors"
    7 "List of all the branches by date"
    8 "Get text changelogs"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

function detailedGitStats()
{
    git log --numstat | awk '
    function printStats(author) {
      printf "%s:\n", author
      printf "  insertions: %d  (%.0f%%)\n", more[author], (more[author] / more["total"] * 100)
      printf "  deletions: %d  (%.0f%%)\n", less[author], (less[author] / less["total"] * 100)
      printf "  files: %d  (%.0f%%)\n", file[author], (file[author] / file["total"] * 100)
      printf "  commits: %d  (%.0f%%)\n", commits[author], (commits[author] / commits["total"] * 100)
    }

    /^Author:/ {
      author           = $2 " " $3
      commits[author] += 1
      commits["total"]  += 1
    }

    /^[0-9]/ {
      more[author] += $1
      less[author] += $2
      file[author] += 1

      more["total"]  += $1
      less["total"]  += $2
      file["total"]  += 1
    }

    END {
      for (author in commits) {
        if (author != "total") {
          printStats(author)
        }
      }
      printStats("total")
    }'
}

clear
case $CHOICE in
    1)
        echo "Suggest code reviewers based on git history."
        git log --pretty=%an $* | head -n 100 | sort | uniq -c | sort -nr
        ;;
    2)
        echo "Detailed stats per author, including contribution to the total change"
        detailedGitStats
        ;;
    3)
        echo "Git commits per day:"
        git log --date=short --format='%ad' | sort | uniq -c
        ;;
    4)
        echo "Git commits per author:"
        git shortlog -s -n
        ;;
    5)
        echo "Get own stats for the day:"
        git diff --shortstat "@{0 day ago}"
        ;;
    6)
        echo "List repository contributors by author name (sorted by name):"
        git log --format='%aN' | sort -u
        ;;
    7)
        echo "List of all the branches, ordered by most recent commits:"
        git for-each-ref --sort=committerdate refs/heads/ --format='[%(authordate:relative)] %(color:blue) %(authorname) %(color:yellow)%(refname:short)%(color:reset)'
        ;;
    8)
        echo "Generate git changelogs:"
        git log --pretty=format:"- %s%n%b" --since="$(git show -s --format=%ad `git rev-list --tags --max-count=1`)"
        ;;
esac
