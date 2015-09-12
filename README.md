# githooks
Git hooks for the average rails developer

## Purpose
Git by default does not allow committing .git/hooks directory into the repository. 

## Workaround
A simple solution is to have a separate directory for the hook files, and to make symlinks in .git/hooks to point to these hooks. 

## Installation

1. Copy all the files into a new directory called 'githooks' in your project's root directory. Or copy your own .git/hooks into this directory.
2. Run the shell script make_symlinks.sh
3. Done!


# The Hooks

## Features and customization

### commit-msg
If there is a string matching 'task-1234' in your branch name, every commit message will have 'TASK-1234: ' prepended to it. This is useful when integrating your code repository with a project tracking tool like Atlassian's Jira. You can customize the regex in the file commit-msg. 

### post-checkout
* If you checkout release or master, you will be notified.
* If you checkout a new branch, a new unreleased changes file will be made for you by the name of your branch. 

### post-merge
* If there is a change in your Gemfile, bundle install will be triggered
* if there is a change in db/migrate, rake db:migrate will be triggered.
* if there is a change in data/migrate, rake data:migrate will be triggered.

### pre-commit
* forbids some patterns in the code base to be committed, for example git conflict markers and debugging tools like console.log







