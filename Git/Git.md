## Fast Forward Git
If we are working on feature branch after completed our work we commited changes and commit id generated.
Now if want to megrge this feature brach to Master branch,We navigate to Master brach and executing the following command.
```
git merge feature

```
By deafault git uses fast forward merge

Fast forward merge Insted of creating new commit in Master branch git will just point  master to the latest commit of feature branch.