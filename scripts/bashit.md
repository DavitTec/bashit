# BashIT  a Bash History Dump #

**This is a Project idea - research & work in progress.**

Bash history Dump (bshd) aims to be a small script to manage bash history with a purposful set of added features.

By adding some additional tags in the command line terminal, **bshd** can turn your instructions, commands or text into other features.

As terminal activity records terminal input in a dot file like
``` 
.bash_history 
```
these lines of text and or commands or any input can be manipulate for later use and organised into other extendable features 
like creating a short Bash shell script or even Todo notes. 

The script relies on a set of Unique TAGS. so the idea of adding these tags during typing and not interfear work flow, coding or visual effects.  
This idea is considering a 😏Smilie/emoji tags or extended characters. 

## AIMS ##

- MODE
  - To start and stop bash history saving sessions or set recording intervals, day(d)week(w)month(m).
  - each end of session save previous session with date stamp in ```History folder```.
- DELETE
  - To make deleting a consecutive group of lines or individal selection easier
- GROUP
  - To group blocks of terminal sessions into project blocks
- TAG
  - With the aid of structured comment tags, history blocks can be saved
  with additional information to make transition of small tasks into
  a project.
- SAVE
  - save your history in a specific folder ```${HOME}/.local/history``` for ease of use
- SCRIPT
  - convert lines of history text into a new mini script, defaulting from last # of lines or from marker or tag lines
    - This feature should automatically fix duplicates or command errors.
- CONFIG
  - optional configurations 
    - location of history files
    -  max size of block
    -  remove repeat lines
    -  check for errors and highlight them
    -  change, fix or add expanded commentary
    -  automatic routines ...via cron job 
    -  mark lines for deletion or move  
- BREAK
  - Split
    - Adding a split marker TAG that will split before TAG after tag into
    - to or more new history files.  Default Master is from  the nth tag. 
  - Join
    - To choose to rejoin a previous TAG history file with the active Master file. This is useful when working on multibale projects or had a activity gap in termainal sessions.
  - Merge
    - If there is a project where Tags are used for a project, then its possible to merge blocks of code, text or commands into a single history file. Then the merged block can be split out again in a single project, 
- PLAY
    - This should take a tagged block of text from Master or named history file and simulate keystrokes. A feature to be used for exporting into a SVG playback file.
- ARCHIVE
  - Saving history to a database or code snippets.








   

---

