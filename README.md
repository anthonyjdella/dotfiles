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
// Make a change to a (dot)file. Use the alias, which was created above:
dot add .{name-of-file}
dot commit -m "Added some file"
dot push
```


**To Delete config files, then push to this repo:**
```
// Manually delete the file/directory from the GitHub UI (click the file then delete).

// From Computer that want's to Pull:
dot pull
```


**To Pull from this Repo on another computer:**
```
// Clone repo to HOME directory (make sure .ssh/id_rsa is moved over to the new computer):
git clone --bare git@github.com:anthonyjdella/dotfiles.git

// Create alias on new computer
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

// Checkout content from Repo to local $HOME
dot checkout

// An error may occur that says "The following untracked working tree files would be overwritten by checkout"
// This means that the new computer already has files from this Git Repo, so you'll need to remove them
// Below command tries to back them up in .dotfiles-backup
mkdir -p .dotfiles-backup && \
dot checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{}

// Ignore untracked files:
dot config --local status.showUntrackedFiles no

// Pull
dot pull

// Checkout
dot checkout
```

## References

1. [Blog Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)
2. [Stackoverflow](https://askubuntu.com/questions/1316229/is-it-bad-practice-to-git-init-in-the-home-directory-to-keep-track-of-dot-files)
3. [Video Tutorial](https://www.youtube.com/watch?v=tBoLDpTWVOM&t)
