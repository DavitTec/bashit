# BashIT


##### A small collection of bash scripts to help with daily or once off chores.

## Tools

<details>
  <summary>cleanit</summary>
  The quick way to cleanup and free some space when working with NPM dev projects.

  This script will find all __node-modules__ and display the space and allow for deletion.
  [more>](./scripts/cleanit/README.md)
  <div align="center">
     INSERT EXAMPLE HERE
  </div>
</details>

<details>
  <summary>bashit</summary>
  Bash history Dump (bshd) aims to be a small script to manage bash history with a purposful set of added features.
  [more>](./scripts/histit/README.md)
  <div align="center">
      INSERT EXAMPLE HERE
  </div>

</details>

<details>
  <summary>mksh</summary>
    Makes an Bash Shell script with the last # lines from Bash history.
    Note ".sh" extention is added to \<name\>  
    Usage:

      ```
        mksh <name> <number>
      ```
  [more>](./scripts/mksh/README.md)
  <div align="center">
     INSERT EXAMPLE HERE
  </div>
</details>


<details>
  <summary>listx</summary>
    One of the VSCode (CODE) scripts.
      A simple script to list current installed Extensions in <a href="https://code.visualstudio.com/">VSCODE</a> and write to a install script called  <strong>listx</strong>

Usage:

 ```
        listx
 ```

This creates a LIST script ```extensions.list``` for installatino   

  ```
        code --list-extension 2gua.rainbow-brackets
        code --list-extension abusaidm.html-snippets
        code --list-extension bierner.markdown-preview-github-styles
        code --list-extension chris-noring.node-snippets
        code --list-extension christian-kohler.npm-intellisense
        code --list-extension christian-kohler.path-intellisense
        code --list-extension CoenraadS.bracket-pair-colorizer
        code --list-extension CoenraadS.bracket-pair-colorizer-2
        code --list-extension dbaeumer.vscode-eslint
        ...
  ```

  [more>](./scripts/code/README.md)
  <div align="center">
     INSERT EXAMPLE HERE
  </div>
</details>


<details>
  <summary>gitit</summary>
    A smallish script to git CLONE of FETCH a <URL> into a desired LOCAL Location and keeps a log.
      Options include

 - open with <a href="https://atom.io/">ATOM</a>  or <a href="https://code.visualstudio.com/">VSCODE</a> .

      ```
        gitit <URL>
      ```

  [more>](./scripts/gitit/README.md)


  <div align="center">
     INSERT EXAMPLE HERE
  </div>
</details>
