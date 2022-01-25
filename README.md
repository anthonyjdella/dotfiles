# 🔵 (dot) files

Storing my dotfiles here, so they are synced and easy to manage.

A common approach is to copy files to a Git repo (this one) then create symbolic links to the actual config file (in the $HOME dir). This approach takes a lot of time though, and requires a script.

This uses a Git --bare repository, then adding files with an alias.

## Instructions

**How this was initialized:**
```
// Create a bare git repo:
cd $HOME
git init --bare .dotfiles

---

// Create an alias to manage everything (add it to .zshrc):
alias dot = "/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

---

// Set up dot config:
dot remote add origin git@github.com:anthonyjdella/dotfiles.git
dot branch --set-upstream-to=origin/main main
dot config pull.rebase true
dot push --set-upstream origin main

---

// Ignore untracked files:
dot config --local status.showUntrackedFiles no
```


**To Save/Update config files, then push to this repo:**
```
Make a change to a (dot)file. Use the alias, which was created above:

dot add .{name-of-file}
dot commit -m "Added some file"
dot push
```


**To Pull from this Repo on another computer:**
```

```
