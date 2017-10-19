# Git Wiki

### First, Clone this repository

```
$ git clone https://github.com/Quentin-Cornu/projet-robot.git
```

### Then, Select a branch (default: master)

```
$ git checkout origin/[name_of_branch]
```

* in this repository the branches are:
  * stm32 (Asservissement)
  * android (APK, Synthese/Reconnaissance Vocale)
  * LIDAR (Detection d'obstacle, Cartographie 360°)
  * how-to-git (This Wiki)
  * master (Should be clean. i.e Stable and Working)

##### TIP

list all branches ` $ git branch `

#### Update your branch when the original branch from official repository has been updated :

```
$ git fetch origin
```

### Finaly, Commit and push your code

#### Commit your code

``` shell
$ git commit -a -m 'Your Commit Message' -u [name_of_the_branch]
```

#### And push it to the repository :

```
$ git push origin [name_of_the_branch]
```

### See also
[https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches]()
