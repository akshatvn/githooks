# githooks
Git hooks for the average rails developer

## Purpose
Git by default does not allow committing .git/hooks directory into the repository. 

## Workaround
A simple solution is to have a separate directory for the hook files, and to make symlinks in .git/hooks to point to these hooks. 

## Installation

1. Copy all the files into a new directory called 'githooks' in your project's root directory. 
2. Run the shell script make_symlinks.sh
3. Done!

