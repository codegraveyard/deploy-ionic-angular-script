# deploy-ionic-angular-script

## Index ##

* [About](#about)
* [Run](#run)
* [Options](#options)
* [Issues](#issues)
* [Contributing](#contributing)
* [Future Plans](#future-plans)

## About ##

* This is a simple script for cloning an angular repository, downloading node dependencies, building the app, and copying the code to the proper directory.

## Run ##

  * Make command available to the terminal
    
    ```
    source main.sh
    ```

  * Run command
    
    ```
    deployIonic <GIT_DIRECTORY>
    ```

## Options ##

  * **REQUIRED** 
    
    * `<GIT_USERNAME>` - The username of the repository you want to clone. (Ex: `deployIonic jrquick17 <GIT_DIRECTORY>`)
    * `<GIT_DIRECTORY>` - The repository name you want to clone. (Ex: `deployIonic jrquick17 deploy-ionic-angular-script`)
     
  * **Optional** 
  
    * Take into account that **Order Matters** 
        * If you want to use the second argument in this list then you must use the first, if you want to use the third you must use the first and second too, and so forth.
    
    * `<-ssh|https>` - This allows you to change from `ssh` to `https`. (Ex: `jrquick17 deploy-ionic-angular-script https`)
    * `<-execution_location|*>` - This allows you to change the output directory to another location besides the current directory. (Ex: `jrquick17 deploy-ionic-angular-script ssh /var/bin/something/`)

## Issues ##

If you find any issues feel free to open a request in [the Issues tab](https://github.com/jrquick17/football-bingo/issues). If I have the time I will try to solve any issues but cannot make any guarantees. Feel free to contribute yourself.

### Thanks ###

* [jrquick17](https://github.com/jrquick17)

## Future Plans

* Give me some ideas!
