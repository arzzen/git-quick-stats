#!/bin/bash

. tests/assert.sh -v

src="./git-quick-stats"

assert "$src fail" "Invalid argument. Possible arguments: suggestReviewers, detailedGitStats, commitsPerDay, commitsByMonth, commitsByWeekday, commitsByHour, commitsByAuthorByHour, commitsPerAuthor, myDailyStats, contributors, branchTree, branchesByDate, changelogs, changelogsByAuthor"
assert_raises "$src fail" 1

assert_contains "$src suggestReviewers" "Suggested code reviewers (based on git history)" 127
assert_raises "$src suggestReviewers" 0

assert_contains "$src detailedGitStats" "Contribution stats" 127
assert_raises "$src detailedGitStats" 0

assert_contains "$src commitsPerDay" "Git commits per date" 127
assert_raises "$src commitsPerDay" 0

assert_end
