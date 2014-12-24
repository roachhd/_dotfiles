I use git a lot for work and other projects, so I invested the time in creating some high quality aliases that really work for me.  These just go in your bash profile (~/.bash_profile or ~/.bashrc or ~/.profile depending on your OS).

I see a lot of people go overboard with aliases, and then end up not using them.  They're meant to cover 95% of the commands I use, not 100%.

```sh
alias gcam='git commit -am'
alias gs='git status'
alias gplr='git pull --rebase'
alias gpsh='git push'
alias gpo='git push -u origin `git symbolic-ref --short HEAD`'
alias glg='git log'
```

### Basics

So let's say I made some changes, and no one else is working on this repo.

```sh
$ gs
$ gcam "changed some stuff"
$ gpsh
```

Done.  Written out that would look like this:

```sh
git status
git commit -am "changed some stuff"
git push
```

That's a lot more typing, and I do this many times per day.

### Pull

When working with other people, you need to pull in their changes.  I pretty much always forget to add `--rebase` when pulling, which is the main reason I created the `gpr` macro.

```sh
gs
gcam "made some changes"
grp
gpsh
```

### gpo and glg

These are questionable, because I only sometimes use them.  They're the last 3% to get up to 95%.  `gpom` is for when you create a new repo/branch, and you need to tell it where to track to (for some reason git is difficult about this...).

git log is just generally useful, and I check it fairly frequently, though I prefer github's ui most of the time.

### Extra fun!

I found this online somewhere, and modified it a bit.

```sh
function git_branch_name () {
  __CURRENT_GIT_BRANCH=$(git symbolic-ref HEAD --short 2>/dev/null )
  if [ -n "$__CURRENT_GIT_BRANCH" ]; then
    __CURRENT_GIT_BRANCH=" ${__CURRENT_GIT_BRANCH}"
  fi
  echo -n "$__CURRENT_GIT_BRANCH"
}

PROMPT_COMMAND='PS1="\W$(git_branch_name) \$ "'
```

It looks really really crazy, but it basically makes my terminal prompt show "{DIR} {BRANCH} $" instead of the useless information about the computer I'm on... I know which computer I'm on... 

When not in a git repo, it just shows the directory name.  It's nice to be able to not type anything and see where I am.

---

Hope there's something you can use here to improve your workflow!
