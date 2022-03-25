# gitit

# Description

Takes GIT HTML URL and creates a clone in the appropriate  place.

###  FEATURES:
- [X] git clone the URL, if NEW CLONE, into a common Local development directory and log it
- [X]  NOTE:  PREFIX="$HOME/Development/GITHUB" see TODO
- [X]  Presents option to Fetch if already CLONED
- [X]  Open with ATOM or vsCode
- [X]  Creates a log file and updates 
   
##  TODO
- [ ] Control verbose mode
- [ ] Allow open with ATOM or CODE on after new clone
- [ ] FIXME:  Create subdirectors if not existing.
- [ ] Take URL one or more SEE GetOPTS
- [ ] Auto update 
- [ ] LOG to be updated with GIT status.
  - [ ]  what about last update data of Origin?
- [ ]  Expand LOG or list file
- [ ]  Add a config file. 
- [ ]  CHECK input URL and or Repository for valid data/git. 
- [ ]  What about sync with other GIT repositories.
- [ ]  Add [GET OPTS](#GetOpts)
   - [ ] show help
   - [ ] print list of 
       - [ ] Repositories 
       - [ ] Owners
       - [ ] Categories
       - [ ] Last checked and last updated 
   - [ ] What to do without Arguments 
          - [ ]  OPEN list file 
   - [ ] setup or change config
   - [ ] MOVE Local repository
   - [ ] Clean Local Repository ie remove builds/libs/node_modules SEE [cleanit](https://github.com/DavitTec/bashit/blob/master/scripts/cleanit.md)  

## USAGE
   \<URL\> is the url (html) copied from GITHUB Repository
   ```
    gitit <URL>
  ```
### OPTIONS (suggestions)
  - [ ]  -h Print Help
  - [ ]  -v version
  - [ ]  -V verbose (Default OFF = no questions and run with defaults)
  - [ ]  -c Config
  - [ ]  -l list current  
      - [ ]  -l [URL] list status, -l [file] runs file with URL per line
  - [ ]  -p poll all current local repositories for status summary
  - [ ]  -n Clean one of more local Repos (may use [cleanit](https://github.com/DavitTec/bashit/blob/master/scripts/cleanit.md) )
  - [ ]  -m [path]



  
  
  
  
