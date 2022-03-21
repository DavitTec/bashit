# Bash split text file into an array of elements


Some examples on how to convert some text from a file into an array of elements.

We will consider various methods and targeted formats

## Convert into an array using
1. Parenthesis
1. Read
1. Delimiter
1. Transform [tr](https://linuxhint.com/bash_tr_command/)

For this exercise we will use the same [sample](sample.txt) test file
with the containing we assume blocks of text.
We assume all protential records are seperated by line feed __\nr__

Various Strings in various formats
<details>
<summary>sample.txt</summary>

```
Unorganised Address book
========== ========= =========== =========
Joe Bloggs 23 123 Pencil town, Georgia.
Jane doe, 34, Awkward pillar St., Paris
Paul John Paul, Vatican terrace	Via Ruel 	Rome.
========== ========= =========== =========

Sample items with various Directory paths
20M	/home/John/Development/GITHUB/Johnny/pizza/node_modules
12M	/home/John/Development/web/bootstrap1/node_modules
82M	/home/John/Development/web/11ty/01-base/node_modules
150M	/home/Jane/Development/web/my-test-package (0.1.2)/node_modules
125M	/home/John/Development/web/11ty/eleventy-sample/node_modules

A mixed table  
Date       Description       Price     tax     INstock
24.5.22    Bucket            $ 13.00    1.1      Y
19/5/2022  Brush             $3.00      0.78     Yes
25 May 21  Cloth             $0.99      0.18     Yes
23 June    Soap              $1         0.02     No

```
</div>
</details>


## How many lines

For this we use the ```wc``` command[^1]



## Mark blocks

## References
[#1]: [To learn more about Extended **Markdown**](https://wordpress.com/support/markdown-quick-reference/) for using footnotes, reference, biblio etc.

[#2]: [How to increment version number in a shell script?](https://stackoverflow.com/questions/8653126/how-to-increment-version-number-in-a-shell-script)

## Footnotes
[^1]: [wc command](https://linuxize.com/post/linux-wc-command/).
