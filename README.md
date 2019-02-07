
## GIT quick statistics [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Simple%20and%20efficient%20way%20to%20access%20various%20statistics%20in%20git%20repository&url=https://github.com/arzzen/git-quick-stat&via=arzzen&hashtags=git,stats,tool,statistics,developers) [![Travis](https://api.travis-ci.org/arzzen/git-quick-stats.svg?branch=master)](https://travis-ci.org/arzzen/git-quick-stats) [![Homebrew package](https://repology.org/badge/version-for-repo/homebrew/git-quick-stats.svg)](http://braumeister.org/formula/git-quick-stats) [![Linuxbrew package](https://repology.org/badge/version-for-repo/linuxbrew/git-quick-stats.svg)](https://repology.org/metapackage/git-quick-stats/packages)

> `git-quick-stats` is a simple and efficient way to access various statistics in git repository.

> Any git repository contains tons of information about commits, contributors, and files.  Extracting this information is not  always trivial, mostly because of a gadzillion options to a gadzillion git commands – I don’t think there is a single person  alive who knows them all.  Probably not even [Linus Torvalds](https://github.com/torvalds) himself :).

![screenshot](https://user-images.githubusercontent.com/6382002/52440487-86acde00-2b1e-11e9-9bb4-ca42ce2d0fc0.png)


## Table of Contents

[**Screenshots**](#screenshots)

[**Installation**](#installation)
* [**Unix OS**](#unix-like-os)
* [**OS X**](#os-x-homebrew)
* [**Windows**](#windows-cygwin)

[**Usage**](#usage)
* [**Git log since/until**](#git-log-since-until)
* [**Git log limit**](#git-log-limit)
* [**Git pathspec**](#git-pathspec)
* [**Tests**](#tests)

[**System requirements**](#system-requirements)
* [**Dependences**](#dependences)

[**Contribution**](#contribution)

[**FAQ**](#faq)

[**License**](#licensing)


## Screenshots

![screenshot-3](https://user-images.githubusercontent.com/6382002/52440631-f6bb6400-2b1e-11e9-98f4-2a75c8fc8435.png)

![screenshot-2](https://user-images.githubusercontent.com/6382002/52440598-db505900-2b1e-11e9-8f4a-bb8c55757c62.png)


## Usage

```bash
git-quick-stats
```

Or you can use (non-interactive) direct execution:

`git-quick-stats <optional-command-to-execute-directly>`

Possible arguments in short and long form:

```
-r, --suggest-reviewers
    show the best people to contact to review code
-T, --detailed-git-stats
    give a detailed list of git stats
-d, --commits-per-day
    displays a list of commits per day
-m, --commits-by-month
    displays a list of commits per month
-w, --commits-by-weekday
    displays a list of commits per weekday
-o, --commits-by-hour
    displays a list of commits per hour
-A, --commits-by-author-by-hour
    displays a list of commits per hour by author
-a, --commits-per-author
    displays a list of commits per author
-S, --my-daily-stats
    see your current daily stats
-C, --contributors
    see a list of everyone who contributed to the repo
-b, --branch-tree
    show an ASCII graph of the git repo branch history
-D, --branches-by-date
    show branches by date
-c, --changelogs
    see changelogs
-L, --changelogs-by-author
    see changelogs by author
-h, -?, --help
    display this help text in the terminal
```

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
* Tools we use: awk ; cat ; column ; echo ; git ; grep ; head ; seq ; sort ; tput ; tr ; uniq ; wc

#### Dependences

* [`bsdmainutils`](https://packages.debian.org/sid/bsdmainutils) `apt install bsdmainutils`

## FAQ

*Q:* I get some errors after run git-quick-stats in cygwin like `/usr/local/bin/git-quick-stats: line 2: $'\r': command not found`

*A:* You can run dos2unix app in cygwin `/bin/dos2unix.exe /usr/local/bin/git-quick-stats`. This will convert it to Unix format and you then should be able to run it.

## Contribution

Want to contribute? Great! First, read this page.

#### Code reviews
All submissions, including submissions by project members, require review.</br>
We use Github pull requests for this purpose.

#### Some tips for good pull requests:
* Use our code </br>
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

[![codecov](https://codecov.io/gh/arzzen/git-quick-stats/branch/master/graph/badge.svg)](https://codecov.io/gh/arzzen/git-quick-stats)

```bash
make test
```

## Licensing
MIT see [LICENSE][] for the full license text.

   [read this page]: http://github.com/arzzen/git-quick-stats/blob/master/docs/CONTRIBUTING.md
   [landing page]: http://arzzen.github.io/git-quick-stats
   [LICENSE]: https://github.com/arzzen/git-quick-stats/blob/master/LICENSE

