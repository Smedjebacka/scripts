# Various scripts

Some bash scripts that generally iterate child folders that are git repos, and do stuff in those git repos.

**git-grep-all**: do a 'git grep' in each repo. `git grep` is insanely fast.

**git-find-remote-branches**: quickly find repos that contain a remote branch that matches a pattern.

**git-pull-all**: pull all repos (and highlight any errors)

# Instructions

Place the script in a parent folder that contains many git repos.

Cd to the parent folder, and do:
```
./git-grep-all.sh MySearchString
```

Look in each script for more info on arguments.
