# HistIT

**This is a Project idea - research & work in progress.**

HistIT aims to enhance Bash ```history```. 
The goal is to be a script to enhance and manage bash history with a purposeful set of added features.

By adding some additional tags in your command line terminal, **histit** can turn your instructions, commands or text into other features.

As terminal activity records terminal input in a dot file like ```.bash_history```  these lines of text and or commands or any input can be manipulate for later use and organised into other extendable features 
like creating a short Bash shell script or even Todo lists. 

The script relies on a set of Unique TAGS. So one idea of adding these tags during typing and not interfere with work flow, coding or visual effects.  
This idea is considering a 😏Smilie/emoji like tags, extended characters or character group like: ```#!$-1!``` or ```#!$-1main1!```  
However, we have not decided on the TAG steps yet.

As most developers would use other development platforms for designing and testing script. The goal of the project may not endup being beneficial. However, some amatures like myself, then to type notes, test code snippets and keep records of simple commands and or use the history file for repeated command sequences or as an aid for more complicated applications, calculations,  file manipulation, self notes or one line very complex regex search.

The idea of scripts is to help reduce repeated tasks or workloads.  The steps to make a script is from a very simple idea, but testing is usually done on the command line.  Old coders, like myself, relied 100% on the command line and not use any IDEs. However, the main difference between C and C++ is about structured coding. Of course SHELL commands are simple and limited.  But from the basis of one line complex operation before moving into more powerful languages like C, PERL, fortran etc. Terminal commands is the quickest tool for testing. However, **C** for example was and still is more efficient then its relative successor, ***c++***. So the dilema here with command line recording into a History file, is to consider that unorganised unstructured efficent coding may end up as structured scripts. This happens with the aid of good commentary and documetation. This is what a History file should include, but does not. So I basis this project on this need for adding commentary.    

The ```Basit``` is a series of scripts that may merge into a integrated set of tools to aid daily repetitive housekeeping chores and or just fixing a jumbled mess or clutter.

The phrase of "How did I do that!" may crop up time and time again, so it may be nice to see it in action and let the HistIT redo or ```play``` some keystrokes and watch what happend.  We assume if we dont change anything, a recorded script/keystrokes can present the same outcome, in theory!  However, in many cases our development environment changes in the background (always) and logging those changes may not always be possible. Therefore a ```play``` tool may be a useful tool for analysis. The other useful tool is convert last set of commands into a seperate shell script in a nice neat format. As we expand some more features that use Bash history, like ToDo, this pack of tools may end up with the following features.


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
## REFERENCES
