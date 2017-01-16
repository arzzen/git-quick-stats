
## GIT quick statistics

> `git quick-stats` is a simple and efficient way to access various statistics in git repository.

Usage `git quick-stats`
![screenshot from 2017-01-16 21-00-02](https://cloud.githubusercontent.com/assets/6382002/21997447/b8aa40e0-dc2f-11e6-8149-ef2b94f4e167.png)

Example "Suggest code reviewers based on git history":
![screenshot from 2017-01-16 21-01-05](https://cloud.githubusercontent.com/assets/6382002/21997448/b8ae9442-dc2f-11e6-9209-0218cbad52ae.png)

Want to contribute? Great! First, [read this page][].


## Usage

```
git quick-stats
```

## Installation

```
# clone & install
git clone https://github.com/arzzen/git-quick-stats.git && cd git-quick-stats
sudo make install
```

For uninstalling, open up the cloned directory and run

```
sudo make uninstall
```

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
