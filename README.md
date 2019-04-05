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
    
    * `<GIT_USERNAME>` - The username of the repository you want to clone. (Ex: `jrquick17`)
    * `<GIT_DIRECTORY>` - The repository name you want to clone. (Ex: `deploy-ionic-angular-script`)
     
  * **Optional** 
    
    * `<--TO_DO>` - Nothing has been implemented yet. 

## Issues ##

If you find any issues feel free to open a request in [the Issues tab](https://github.com/jrquick17/football-bingo/issues). If I have the time I will try to solve any issues but cannot make any guarantees. Feel free to contribute yourself.

### Thanks ###

* [jrquick17](https://github.com/jrquick17)

## Future Plans

* Customizable output directory
* SSH and HTTPS support
