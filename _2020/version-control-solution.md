## Task 2
git clone git@github.com:aniervs/missing-semester.git
git log --graph --decorate --oneline --all
git log -1 README.md
commit f61bdc1d593a5261f4c1851b3e2c3dbb8e446632 (HEAD -> master, origin/master, origin/HEAD)
Author: Anish Athalye <me@anishathalye.com>
Date:   Sat Feb 1 10:12:19 2025 -0800

    Update CI status URLs

git blame _config.yml
git show d4412ead    
commit d4412ead0bd63f24cd836f0ac021243200f8c255
Author: Anish Athalye <me@anishathalye.com>
Date:   Sun Dec 1 21:26:19 2019 -0500
## Task 3
git filter-repo --invert-paths --path _2020/secret_token.txt --force

## Task 4
git stash
git log --all --oneline
git stash pop

## Task 5
git config --global alias.graph "log --all --graph --decorate --oneline"
cat ~/.gitconfig
[user]
        name = Artem
        email = tearrema@gmail.com
[alias]
        graph = log --all --graph --decorate --oneline
git graph

## Task 6
git config --global core.excludesfile ~/.gitignore_global
