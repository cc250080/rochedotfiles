## How to use this repo as for Home dotfiles

The key to making this work is a one-byte *.gitignore* file:

```
*
```

With this line, and git will ignore all of the files in my $HOME directory, so I needn’t worry about leaving personal files, music, videos, other git repositories, and so on, in my public dotfiles repo. But, in order to track anything at all, we need to override the gitignore file on a case-by-case basis with git add -f, or --force. To add my vimrc, I used the following command:

```
git add -f .vimrc
```

Then I can commit and push normally, and .vimrc is tracked by git. The gitignore file does not apply to any files which are already being tracked by git, so any future changes to my vimrc show up in git status, git diff, etc, and can be easilly committed with git commit -a, or added to the staging area normally with git add — using -f is no longer necessary. Setting up a new machine is quite easy. After the installation, I run the following commands:

```
cd ~
git init
git remote add origin git@git.sr.ht:~sircmpwn/dotfiles
git fetch
git checkout -f master
```

##Setup of Starship

```
apt-get install fonts-firacode
curl -sS https://starship.rs/install.sh | sh
```
Add the following to the end of .bashrc (already in the repo)

```
eval "$(starship init bash)"
```

