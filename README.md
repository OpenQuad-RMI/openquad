This branch contains instructions for people who are not familiar with pull requests and basic git working.
## Setup 
- Fork the repository from your GitHub account.
- Check for remotes using the command
``` git
git remote -v 
```
  You should see origin with their URL. Since all the changes are being made to `OpenQuad-RMI/openquad` we will have to add another remote setting it as upstream. 
- Setting `OpenQuad-RMI/openquad` as upstream
```git
git remote add upstream https://github.com/OpenQuad-RMI/openquad
```
## Before development
Now that basic setup is done before doing any development it is advisable that you do the following to avoid any conflicts.
```git
git fetch upstream
git pull upstream branch_name
# Here branch is the branch_name you will be working on
```
## After development
Once you are done developing push the code to your repository and generate a pull request
```git
git commit -am "Commit message"
git push origin branch_name
```
Go to your repository on github and issue a pull request.
