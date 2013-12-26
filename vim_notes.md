This is my Vim cheatsheet.

## Table of Contents
1. [Movement](#movement)
2. [Deleting](#deleting)
3. [Changing text](#changing-text)
4. [Using Counts with Commands](#using-counts-with-commands)
5. [Undoing](#undoing)
6. [Replacing](#replacing)
7. [Pasting](#pasting)
8. [Location and Searching](#location-and-searching)
9. [Replacing](#replacing)
10. [Visual Mode](#visual-mode)
11. [Buffers](#buffers)
12. [Using registers](#using-registers)
13. [File Commands](#file-commands)
14. [Windows](#windows)
15. [Tags](#tags)
16. [Tabs](#tabs)
17. [Reflow and wrap text](#reflow-and-wrap-text)

## Movement
|     Key       |   Action    |
|:-------------:|---------------|
|      j        |   down   |
|      k        |  up   |
|      l        |  right   |
|      h        |  left   |
|      H        |  move to the top of the window |
|      M        |  move to the middle of the window |
|      L        |  move to the bottom of the window |
|   ctrl-e      |  scroll the screen down one line |
|   ctrl-y      |  scroll the screen up one line |
|   ctrl-d      |  move down 1/2 screen |
|   ctrl-u      |  move up 1/2 screen |
|   ctrl-f      |  move forward 1 screen |
|   ctrl-b      |  move back 1 sceen |
|      w        |  move forward a word |
|      b        |  move backward a word |
|      e        |  move to the end of a word |
|      W        |  move forward a blank-separated word |
|      B        |  move backward a blank-separated word |
|      E        |  move to the end of a blank-separated word |
|      )        |  move one sentence forward |
|      (        |  move one sentence backward |
|      }        |  move one paragraph forward |
|      {        |  move one paragraph backward |
|      [(       |  move back to unclosed ( |
|      ])       |  move forward to unclosed } |
|      [{       |  move back to unclosed { |
|      ]}       |  move forward to unclosed } |
|   m{a-zA-Z}   | mark the current position with the letter |
|   `{a-zA-Z}   | go to the letter-marked position in the current file |
|     `=        |  go to position when last editing this file |

Go to the [Table of Contents](#table-of-contents)

Editing commands generally follow the structure of:
[register][num/range]<verb><noun|(i|a)<text object>>    

## Deleting
|     Key       |   Action    |
|:-------------:|---------------|
|     dw    |    delete to the start of the next word |
|     d$    |    delete to end of line |
|     de    |    delete to the end of the current word |
|    daw    |    delete a word in which the cursor appears including white space - identical to dw |
|    diw    |    delete the word in which the cursor appears excluding white space - identical to de |

Go to the [Table of Contents](#table-of-contents)

## Changing text
|     Key       |   Action    |
|:-------------:|---------------|
|   ce/cw   | change until end of word - This deletes from the current location until the end of the word and changes to the input mode. |
|    c$    | change until end of line - Erase from current position until the end of the line and changes to the input mode. |

Go to the [Table of Contents](#table-of-contents)

## Using Counts with Commands
Preceding a command with a count will repeat the command that many times.
e.g. - 2dw - delete 2 words

Go to the [Table of Contents](#table-of-contents)

## Undoing
|     Key       |   Action    |
|:-------------:|---------------|
|    u   |    undo |
|    U   |    undo all changes on a line |
| CTRL-R |    redo - undoes the effect of undos |

Go to the [Table of Contents](#table-of-contents)

## Replacing
|     Key       |   Action    |
|:-------------:|---------------|
|    r    |    replace current character |
|    R    |    start overwrite mode |

Go to the [Table of Contents](#table-of-contents)

## Pasting
|     Key       |   Action    |
|:-------------:|---------------|
|    p    |    Paste text after the cursor.  This is like paste.  If you do dw to delete word, you can move the cursor to another place and type p to place the deleted text there.  The insertion will occur after the current cursor position. |
|    P    |    Paste text before the cursor |

Go to the [Table of Contents](#table-of-contents)

## Location and Searching
|     Key       |   Action    |
|:-------------:|---------------|
| CTRL-G  | Show the current location and file status |
|   GG    | go to end of file |
|   gg    | go to beginning of file |
|   5G    | go to line 5 of the file.  Replace 5 with the line number to jump to. |
|    /    | search forward |
|    ?    | search backward |
|    n    | Next occurrence in same direction |
|    N    | Next occurrence in the opposite direction |
| CTRL-O  | Go back to where you came from. |
| CTRL-I  | Go forward |
|    *    | Find the word currently under the cursor |
|    %    | Find matching parens, bracket, or brace |

Go to the [Table of Contents](#table-of-contents)

## Replacing
|     Key       |   Action    |
|:--------------:|---------------|
| s/old/new      | Substitute the first occurrence in the current line |
| s/old/new/g    | Substitute all occurrences in the current line |
| %s/old/new/g   | Substitute all occurrences in the current file |
| s/old/new/gc   | Find all occurrences in the line and prompt for replace |
| %s/old/new/gc  | Find all occurrences in the file and prompt for replace |
| #,#s/old/new/g | The #'s represent starting and ending line numbers for the replacement. |

Go to the [Table of Contents](#table-of-contents)

## Visual Mode
|     Key       |   Action    |
|:-------------:|---------------|
|   v   | enter Visual mode. |
|   V   | enter Visual mode for whole lines. |
|   y   | yank a line or yank from visual start to current position |

Note: After entering visual mode, the normal editing keystrokes work.  Press x 
to delete the seleected text, cw to clear the text and enter insert mode,  etc. 
You can also yank to registers.

Go to the [Table of Contents](#table-of-contents)

## Buffers
Editing multiple files
Start vi with multiple files listed on the command line.
|     Key       |   Action    |
|:-------------:|---------------|
| :next     | Switch to the next file in the file list |
| :previous | Switch to the previous file in the list |
| :first    | Switch to the first file in the list |
| :last     | Switch to the last file in the list |
| :args     | see which file you are on |
| :args file1.c file2.c file3.c    |    Add new files to edit |

Go to the [Table of Contents](#table-of-contents)

## Using registers
|     Key       |   Action    |
|:-------------:|---------------|
|  "f3yy    | Yank 3 lines to the f register |
|  "F3yy    | Yank 3 lines and append them to the f register |
|  "fyas    | Yank a sentence to the f register |
|  "fp      | put the text from the f register |
|  "wdaw    | delete a word and copy it to the w register |
|  "*y      | Yank a selection to the * register, the clipboard register |
|  "*p      | Put a selection from the * register, the clipboard register |
|  "4p      | Put the thing from the delete or change command 4x times ago. |
|  <C-r>"   | Past from the default register while in insert mode or to the command line. |
|  <C-r>a   | Past from the a register while in insert mode or to the command line. |

Go to the [Table of Contents](#table-of-contents)

## File Commands
|     Key       |   Action    |
|:-------------:|---------------|
|  :edit filename.c  | edit a file |
|  :saveas move.c    | saves the current file as move.c and edits it. |

Go to the [Table of Contents](#table-of-contents)

## Windows
|     Key       |   Action    |
|:-------------:|---------------|
| :split            | split a window into two windows of the same file. |
| ctrl-w <movement> | Move between windows |
| :close            | closes a window |
| :only             | close other windows |
| :split filename.c | split window on another file |
| :new              | open a window with a new empty file |
| ctrl-w +          | Increase the size of a window by one line |
| ctrl-w -          | Decrease the size of a window by one line |
| 5 ctrl-w +        | Make the window 5 lines larger |
| :vsplit           | split the window vertically |
| :qall             | quit all windows |
| :wall             | write all windows |

Go to the [Table of Contents](#table-of-contents)

## Tags
|     Key       |   Action    |
|:-------------:|---------------|
| :tag tagname  | Jump to tag name |
| ctrl-]        | Jump to the tag name under the cursor |
| ctrl-t        | Return to jumped-from location |
| :ts           | List all tag locations for the last tag found.  Useful of more than one definition of a tag occurs as might happen if TDD is being used. |

Go to the [Table of Contents](#table-of-contents)

## Tabs
|     Key       |   Action    |
|:-------------:|---------------|
|  :tabs    | Show current tabs |
|  :tab all | open all buffers in tabs |
|  gt       | go to next tab |
|  gT       | go to previous tab |

Go to the [Table of Contents](#table-of-contents)

## Reflow and wrap text
|     Key       |   Action    |
|:-------------:|---------------|
|  gq  | Highlight the text to be reflowed an press gq |
|   =  | Reformat a selected code block |

Go to the [Table of Contents](#table-of-contents)

## To Do/Learn
- motions
- Add \<C-s\> for saving

Go to the [Table of Contents](#table-of-contents)

