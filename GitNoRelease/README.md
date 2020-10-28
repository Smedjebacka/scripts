# What is this?
A script that is meant to be used instead of the `git merge` command. The script aborts the merge if any file contains the text "NORELEASE". I used to put a comment in files that contained particularly dangerous local changes that were absolutely not meant to slip into master.

# Kind of deprecated
I don't use this script any more. I don't know why, it seems like I scan through staged changes / PR:s so thoroughly that I have never forgot to delete a NORELEASE-tagged change.

# Description
The git-mnr file is a bash script that runs when you
$ git mnr

mnr is short for Merge No Release

The script prevents a merge if any file in the source branch contains the text "NORELEASE". If the files are OK, the script merges just like you would have typed
$ git merge

So the typical use case is
$ git mnr <name of branch that you want to merge into current branch>
instead of typing
$ git merge <name of branch that you want to merge into current branch>


To get the mnr command, put the git-mnr file in your git executable folder. Find that folder with
$ git --exec-path

Now you have the mnr command, but it does not autocomplete input parameters like branch names. To get autocomplete, create a bash alias for git mnr and make that bash alias use the git merge autocomplete function.

If you dont know how to change your bash profile, read this first:
to your bash profile file, using these instructions
https://superuser.com/questions/602872/how-do-i-modify-my-git-bash-profile-in-windows

Follow these instructions, but..
https://gist.github.com/JuggoPop/10706934

..make sure to search the .git-completion.bash file for _git_merge, to find out if the function has one or two leading underscores. When you know that, you can change the bottom lines in the bash profile code to something like this..
__git_complete gm __git_merge

..and also set an alias like this
alias gm="git mnr"

Remember to
$source .bashrc

Done!

So, now you actually type
$ gm <START of name of branch that you want to merge into current branch> <TAB>
instead of
$ git mnr <>
