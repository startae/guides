# Git

## Write a Feature

Create a local feature branch based off master.

* Without [Git Flow](http://danielkummer.github.io/git-flow-cheatsheet/)

  ```
    git checkout master
    git pull
    git checkout -b <branch-name>
  ```

ps.: Start your branch name with `feature/`.

* With Git Flow

  ```
    git checkout master
    git pull
    git flow feature start <feature-name>
  ```

Rebase frequently to incorporate upstream changes.

```
  git fetch origin
  git rebase origin/master
```

Write a [good commit message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html). Example format:

```
Capitalized, short (50 chars or less) summary

* More information about commit (under 72 characters).
* More information about commit (under 72 characters).

[Closes #4]
```

Share your branch.

```
  git push origin <branch-name>
```

Submit a [GitHub pull request](https://help.github.com/articles/using-pull-requests/) and mention people you want to review your code on the PR.

## Review Code

A team member other than the author reviews the pull request. They make comments and ask questions directly on lines of code in the GitHub web interface.

When satisfied, they comment on the pull request `LGTM` (Looks good to me/merge), :shipit: or :+1:.

## Merge

After the review, merge the branch to `develop` and if the code is going directly to production, merge to `master` too.

Delete your remote feature branch.

```
  git push origin --delete <branch-name>
```

Delete your local feature branch.

```
  git branch -D <branch-name>
```
