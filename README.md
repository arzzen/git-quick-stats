
## GIT quick statistics 

> `git quick-stats` is a simple and efficient way to access various statistics in git repository.

## Example

Suggested code reviewers (based on git history):
![screenshot from 2017-02-04 22-00-30](https://cloud.githubusercontent.com/assets/6382002/22621490/62257c30-eb25-11e6-8608-9cfe17509464.png)

Asciinema preview:
[![asciicast](https://asciinema.org/a/6fsugv3m2vygykk49bk7l49ut.png)](https://asciinema.org/a/6fsugv3m2vygykk49bk7l49ut)


Want to contribute? Great! First, [read this page][].


## Usage

```bash
git quick-stats
# or 
git-quick-stats
```

Or you can use (non-interactive) direct execution:

`git quick-stats <optional-command-to-execute-directly>`

> Possible arguments: 
> suggestReviewers, detailedGitStats, commitsByHour, commitsByWeekday, commitsByMonth, commitsPerDay, commitsPerAuthor, myDailyStats, contributors,
branchTree, branchesByDate, changelogs


#### Limit git log

You can set variable `_GIT_SINCE`, `_GIT_UNTIL` and limit the git log

eg:

`export _GIT_SINCE="2017-20-01"`

`export _GIT_UNTIL="2017-22-01"`

then run `git quick-stats` (affect all stats, except "My daily status" and "Git changelogs" )


## Installation

```
git clone https://github.com/arzzen/git-quick-stats.git && cd git-quick-stats
sudo make install
```

For uninstalling, open up the cloned directory and run

```
sudo make uninstall
```

#### Cygwin installation

* [installer](https://gist.github.com/arzzen/35e09866dfdadf2108b2420045739245) 
* [uninstaller](https://gist.github.com/arzzen/21c660014d0663b6c5710014714779d6)

## System requirements

* Unix like OS with a proper shell
* Tools we use: git ; awk ; sed ; tr ; echo ; grep ; cut ; sort ; head ; uniq ; column.

## Contribution 

Want to contribute? Great! First, read this page.

#### Code reviews
All submissions, including submissions by project members, require review. 
We use Github pull requests for this purpose.

#### Some tips for good pull requests:
* Use our code
  When in doubt, try to stay true to the existing code of the project.
* Write a descriptive commit message. What problem are you solving and what
  are the consequences? Where and what did you test? Some good tips:
  [here](http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message)
  and [here](https://www.kernel.org/doc/Documentation/SubmittingPatches).
* If your PR consists of multiple commits which are successive improvements /
  fixes to your first commit, consider squashing them into a single commit
  (`git rebase -i`) such that your PR is a single commit on top of the current
  HEAD. This make reviewing the code so much easier, and our history more
  readable.

#### Formatting

This documentation is written using standard [markdown syntax](https://help.github.com/articles/markdown-basics/). Please submit your changes using the same syntax.

## Licensing
MIT see [LICENSE][] for the full license text.

   [read this page]: http://github.com/arzzen/git-quick-stats/blob/master/CONTRIBUTING.md
   [landing page]: http://arzzen.github.io/git-quick-stats
   [LICENSE]: https://github.com/arzzen/git-quick-stats/blob/master/LICENSE.txt
