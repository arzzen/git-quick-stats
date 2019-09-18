
## GIT quick statistics [![Backers on Open Collective](https://opencollective.com/git-quick-stats/backers/badge.svg)](#backers) [![Sponsors on Open Collective](https://opencollective.com/git-quick-stats/sponsors/badge.svg)](#sponsors) [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Simple%20and%20efficient%20way%20to%20access%20various%20statistics%20in%20git%20repository&url=https://github.com/arzzen/git-quick-stat&via=arzzen&hashtags=git,stats,tool,statistics,developers) [![Travis](https://api.travis-ci.org/arzzen/git-quick-stats.svg?branch=master)](https://travis-ci.org/arzzen/git-quick-stats) [![Homebrew package](https://repology.org/badge/version-for-repo/homebrew/git-quick-stats.svg)](http://braumeister.org/formula/git-quick-stats) [![Linuxbrew package](https://repology.org/badge/version-for-repo/linuxbrew/git-quick-stats.svg)](https://repology.org/metapackage/git-quick-stats/packages)

> `git-quick-stats` is a simple and efficient way to access various statistics in git repository.

> Any git repository contains tons of information about commits, contributors, and files.  Extracting this information is not  always trivial, mostly because of a gadzillion options to a gadzillion git commands – I don’t think there is a single person  alive who knows them all.  Probably not even [Linus Torvalds](https://github.com/torvalds) himself :).

![mainMenuScreenshot](https://user-images.githubusercontent.com/8818630/58364013-61e53800-7e7b-11e9-87f9-790d6744fbd5.png)


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

![commitsByWeekdayScreenshot](https://user-images.githubusercontent.com/8818630/58364011-61e53800-7e7b-11e9-9417-16cbb241ac2e.png)

![commitsByHourScreenshot](https://user-images.githubusercontent.com/8818630/58364010-61e53800-7e7b-11e9-8711-a40b50aebf52.png)


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
-R, --git-stats-by-branch
    see detailed list of git stats by branch
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
-j, --json-output
    save git log as a JSON formatted file to a specified area
-h, -?, --help
    display this help text in the terminal
```

#### Git log since / until

You can set variable `_GIT_SINCE`, `_GIT_UNTIL` and limit the git log

```bash
export _GIT_SINCE="2017-01-20"
export _GIT_UNTIL="2017-01-22"
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

#### Color themes

You can change to the legacy color scheme by toggling the variable `_MENU_THEME` between `default` and `legacy`

```bash
export _MENU_THEME=legacy
```
![legacyThemeScreenshot](https://user-images.githubusercontent.com/8818630/58364012-61e53800-7e7b-11e9-910a-aaff836260eb.png)

## Installation

#### Unix-like OS

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

* Unix-like OS with a proper shell
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


## Contributors

This project exists thanks to all the people who contribute.
<a href="https://github.com/arzzen/git-quick-stats/graphs/contributors"><img src="https://opencollective.com/git-quick-stats/contributors.svg?width=890&button=false" /></a>


## Backers

Thank you to all our backers! 🙏 [[Become a backer](https://opencollective.com/git-quick-stats#backer)]

<a href="https://opencollective.com/git-quick-stats#backers" target="_blank"><img src="https://opencollective.com/git-quick-stats/backers.svg?width=890"></a>


## Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website. [[Become a sponsor](https://opencollective.com/git-quick-stats#sponsor)]


<a href="https://opencollective.com/git-quick-stats/sponsor/0/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/0/avatar.svg?v=1"></a>
<a href="https://opencollective.com/git-quick-stats/sponsor/1/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/1/avatar.svg"></a>
<a href="https://opencollective.com/git-quick-stats/sponsor/2/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/2/avatar.svg"></a>
<a href="https://opencollective.com/git-quick-stats/sponsor/3/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/3/avatar.svg"></a>
<a href="https://opencollective.com/git-quick-stats/sponsor/4/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/4/avatar.svg"></a>
<a href="https://opencollective.com/git-quick-stats/sponsor/5/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/5/avatar.svg"></a>
<a href="https://opencollective.com/git-quick-stats/sponsor/6/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/6/avatar.svg"></a>
<a href="https://opencollective.com/git-quick-stats/sponsor/7/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/7/avatar.svg"></a>
<a href="https://opencollective.com/git-quick-stats/sponsor/8/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/8/avatar.svg"></a>
<a href="https://opencollective.com/git-quick-stats/sponsor/9/website" target="_blank"><img src="https://opencollective.com/git-quick-stats/sponsor/9/avatar.svg"></a>


