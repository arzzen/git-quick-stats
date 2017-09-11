
## GIT quick statistics 

[![Travis](https://api.travis-ci.org/arzzen/git-quick-stats.svg?branch=master)](https://travis-ci.org/arzzen/git-quick-stats) 
[![Homebrew package](https://repology.org/badge/version-for-repo/homebrew/git-quick-stats.svg)](https://repology.org/metapackage/git-quick-stats)
[![Linuxbrew package](https://repology.org/badge/version-for-repo/linuxbrew/git-quick-stats.svg)](https://repology.org/metapackage/git-quick-stats)

> `git quick-stats` is a simple and efficient way to access various statistics in git repository.

> Any git repository contains a tonne of information about commits, contributors, and files.  Extracting this information is not  always trivial, mostly because of a gadzillion options to a gadzillion git commands – I don’t think there is a single person  alive who knows them all.  Probably not even [Linus Torvalds](https://github.com/torvalds) himself :).

## Table of Contents

[**Screenshots**](#screenshots)

[**Installation**](#installation)
* [**Unix OS**](#unix-like-os)
* [**OS X**](#os-x-homebrew)
* [**Windows**](#windows-cygwin)

[**Usage**](#usage)
* [**Git log since/unitl**](#git-log-since-until)
* [**Git log limit**](#git-log-limit)
* [**Git pathspec**](#git-pathspec)
* [**Tests**](#tests)

[**System requirements**](#system-requirements)
* [**Dependences**](#dependences)

[**Contribution**](#contribution)

[**License**](#licensing)


## Screenshots

![screenshot from 2017-04-02 17-10-21](https://cloud.githubusercontent.com/assets/6382002/24588459/bef0a1b8-17c8-11e7-8525-3ab5983b81dc.png)

![screenshot from 2017-04-02 17-09-13](https://cloud.githubusercontent.com/assets/6382002/24588456/bec1278a-17c8-11e7-8835-39273da7bc99.png)

![screenshot from 2017-04-02 17-09-31](https://cloud.githubusercontent.com/assets/6382002/24588457/beece9f6-17c8-11e7-80a4-274ecd314a7e.png)

![screenshot from 2017-04-02 17-09-45](https://cloud.githubusercontent.com/assets/6382002/24588458/bef03656-17c8-11e7-82e6-30a5a11cfbb0.png)

![screenshot from 2017-04-02 17-08-28](https://cloud.githubusercontent.com/assets/6382002/24588460/bef0c2e2-17c8-11e7-88b2-a4033593c5d0.png)


## Usage

```bash
git quick-stats
# or 
git-quick-stats
```

Or you can use (non-interactive) direct execution:

`git quick-stats <optional-command-to-execute-directly>`

Possible arguments: 
> suggestReviewers, detailedGitStats, commitsByHour, commitsByWeekday, commitsByMonth, commitsPerDay, commitsPerAuthor, myDailyStats, contributors,
branchTree, branchesByDate, changelogs, changelogsByAuthor


#### Git log since / until

You can set variable `_GIT_SINCE`, `_GIT_UNTIL` and limit the git log

```bash
export _GIT_SINCE="2017-20-01"
export _GIT_UNTIL="2017-22-01"
```

then run `git quick-stats` (affect all stats, except "My daily status" and "Git changelogs" )


#### Git log limit 

You can set variable `_GIT_LIMIT` for limited output (it will affect: "Git changelogs" and "Branch tree view" )

```bash
export _GIT_LIMIT=20
```

#### Git pathspec

You can exclude directory from the stats by using [pathspec](https://git-scm.com/docs/gitglossary#gitglossary-aiddefpathspecapathspec)

```bash
export _GIT_PATHSPEC=':!directory'
```


## Installation

#### Unix like OS

```bash
git clone https://github.com/arzzen/git-quick-stats.git && cd git-quick-stats
sudo make install
```

For uninstalling, open up the cloned directory and run

```bash
sudo make uninstall
```

For update/reinstall

```bash
sudo make reinstall
```

#### OS X (homebrew)

```bash
brew install git-quick-stats
```

#### Windows (cygwin)

* [installer](https://gist.github.com/arzzen/35e09866dfdadf2108b2420045739245) 
* [uninstaller](https://gist.github.com/arzzen/21c660014d0663b6c5710014714779d6)


## System requirements

* Unix like OS with a proper shell
* Tools we use: git ; awk ; sed ; tr ; echo ; grep ; cut ; sort ; head ; uniq ; column.

#### Dependences

* [`bsdmainutils`](https://packages.debian.org/sid/bsdmainutils) `apt install bsdmainutils`

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

#### Tests

```bash
make test
```

## Licensing
MIT see [LICENSE][] for the full license text.

   [read this page]: http://github.com/arzzen/git-quick-stats/blob/master/CONTRIBUTING.md
   [landing page]: http://arzzen.github.io/git-quick-stats
   [LICENSE]: https://github.com/arzzen/git-quick-stats/blob/master/LICENSE.txt

