# gitit

# Description

Takes GIT HTML URL and creates a clone in the appropriate  place.

###  FEATURES:
  - git clone the URL, if NEW CLONE, into a common Local development directory and log it
  -  NOTE:  PREFIX="$HOME/Development/GITHUB"
  - Presents option to Fetch if already CLONED
  - Open with ATOM or vsCode
  - Creates a log file and updates 
   
##  TODO
  - control verbose mode
  - allow open with ATOM or CODE on after new clone
  - FIXME:  Create subdirectors if not existing.
  -  Take URL one or more
  -  Auto update 
  -  LOG to be updated with GIT status.
    -  what about last update data of Origin?
  -  Expand LOG or list file
  -  Add a config file. 
  -  What about sync with other GIT reporsitories.
  -  Add GET OPTS
     - show help
     - print list of 
         - Reposities 
         - Owners
         - Categories
         - Last checked and last updated 
     - What to do without Arguments 
            -  OPEN list file 
     - setup or change config
     - MOVE Local repository
     - Clean Local Repository ie remove builds/libs/node_modules SEE [cleanit](https://github.com/DavitTec/bashit/blob/master/scripts/cleanit.md)  

## USAGE
   \<URL\> is the url (html) copied from GITHUB Repository
   ```
    gitit <URL>
  ```
  
  
  
  
