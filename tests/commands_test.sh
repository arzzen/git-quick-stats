#!/bin/bash

. tests/assert.sh -v

src="./git-quick-stats"
assert "$src fail" "Invalid argument\n\nNAME\n    git-quick-stats - Simple and efficient way to access various stats in a git repo\n\nSYNOPSIS\n    For non-interactive mode: git-quick-stats [OPTIONS]\n    For interactive mode: git-quick-stats\n\nDESCRIPTION\n    Any git repository contains tons of information about commits, contributors,\n    and files. Extracting this information is not always trivial, mostly because\n    of a gadzillion options to a gadzillion git commands.\n\n    This program allows you to see detailed information about a git repository.\n\nOPTIONS\n    -r, --suggest-reviewers\n        show the best people to contact to review code\n    -T, --detailed-git-stats\n        give a detailed list of git stats\n    -R, --git-stats-by-branch\n        see detailed list of git stats by branch\n    -d, --commits-per-day\n        displays a list of commits per day\n    -m, --commits-by-month\n        displays a list of commits per month\n    -w, --commits-by-weekday\n        displays a list of commits per weekday\n    -o, --commits-by-hour\n        displays a list of commits per hour\n    -A, --commits-by-author-by-hour\n        displays a list of commits per hour by author\n    -a, --commits-per-author\n        displays a list of commits per author\n    -S, --my-daily-stats\n        see your current daily stats\n    -C, --contributors\n        see a list of everyone who contributed to the repo\n    -b, --branch-tree\n        show an ASCII graph of the git repo branch history\n    -D, --branches-by-date\n        show branches by date\n    -c, --changelogs\n        see changelogs\n    -L, --changelogs-by-author\n        see changelogs by author\n    -j, --json-output\n        save git log as a JSON formatted file to a specified area\n    -h, -?, --help\n        display this help text in the terminal\n\nADDITIONAL USAGE\n    You can set _GIT_SINCE and _GIT_UNTIL to limit the git time log\n        ex: export _GIT_SINCE=\"2017-01-20\"\n    You can set _GIT_LIMIT for limited output log\n        ex: export _GIT_LIMIT=20\n    You can exclude directories or files from the stats by using pathspec\n        ex: export _GIT_PATHSPEC=':!pattern'\n    You can set _GIT_MERGE_VIEW to view merge commits with normal commits\n        ex: export _GIT_MERGE_VIEW=enable\n    You can also set _GIT_MERGE_VIEW to only show merge commits\n        ex: export _GIT_MERGE_VIEW=exclusive\n    You can set _MENU_THEME to display the legacy color scheme\n        ex: export _MENU_THEME=legacy"
assert_raises "$src fail" 1

assert_contains "$src --suggest-reviewers" "Suggested code reviewers (based on git history)" 127
assert_raises "$src --suggest-reviewers" 0

assert_contains "$src --detailed-git-stats" "Contribution stats" 127
assert_raises "$src --detailed-git-stats" 0

assert_contains "$src --commits-per-day" "Git commits per date" 127
assert_raises "$src --commits-per-day" 0

assert_end
