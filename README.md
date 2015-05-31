# Vimprove
A series of daily tasks/info to learn vim from beginner to expert one day at a time.
Once installed it gives you new tips in your console every day.
It aims to walk users through new features over time, giving the user time to
learn concepts as they slowly expand their understanding of vim. For this
reason some concepts are explained using different terminology (files instead
of buffers) to aid understanding.

## Installation
- Clone the repo:
```bash
    git clone https://www.github.com/ChrisPenner/vimprove
```

- Run the installation script, then delete the folder.
(The program and tips will be stored in your `~/.vimprove` folder)

```bash
    ./vimprove/install
```

- Lastly add this call to your .bashrc (or your profile file).
    This will cause vimprove to print out your tips every time you open a new
    console.

```bash
    alias vimprove="~/.vimprove/vimprove"
    vimprove
```

- You can now safely delete the github repo you cloned.

## Usage
Vimprove will do its very best to be self-sufficient. Each day that it's run it
will update the vim tips shown by adding a new one and deleting the oldest (if
you've hit the max number of tips, see below to change this). That being said,
if you want to manage it manually there's some commands built in.

The whole thing is built in bash and plain-text, so if you want to add your own
tips, just follow the same format and it'll probably just work.

New tips will (hopefully) be added to the project all the time, so from time to
time just reclone and replace `~/.vimprove/tips` with the new `tips` file.

To manually set where you are in the tips list, just open `~/.vimtips/data` and
change the value of `current_tip`.

- Get help:

```bash
    vimprove help
```

- Change the number of tips shown at a time:

```bash
    vimprove numtips <number>
```

- Cycle to the next tip

```bash
    vimprove next
```

- Remove a tip from your displayed tips:

```bash
    vimprove clear <number>
```

- Add a tip to your displayed tips:

```bash
    vimprove add <number>
```

- Hide the header message

```bash
    vimprove hide
```

- Show the header message

```bash
    vimprove show
```

## The Tips
Feel free to read through them now, but you'll learn them much better if you learn
them a few at a time!

1. Run the `vimtutor` command on the terminal and complete Section 1
2. Remember, use `hjkl` to move around.
3. `i` enters insert mode, where vim works like most editors.
4. In `normal` mode every key is its own command.
    Press `<escape>` to return to normal mode.
    Assume each command is for normal mode unless I say otherwise.
5. In normal mode `:` enters command mode, try `:help<cr>`
    Curious what a key does? `:help <keysequence><cr>` to learn!
    `<cr>` means to press the 'enter'/'return' key.
    for now just try `:help<cr>`
6. `:w` saves the file. `:q` quits, `:wq` saves and quits!
7. You can use `:e <filename>` to open a file for editing,
    Or use `:w <filename>` to write to a file.
8. Work through Section 2 of `vimtutor`.
    Going through vimtutor helps you to remember commands you've forgotten.
9. If you want to show more tips at a time, run `vimprove numtips 'n'`,
    Where 'n' is the max number of tips to show at a time.
10. If you've got a tip mastered, run `vimprove clear 'n'` to clear tip 'n'.
11. `w` moves the cursor forward by one 'word'
     Try `:help iskeyword` to learn about what makes a 'word'.
12. `b` moves the cursor backward by one 'word'
13. `W` moves the cursor forward by one 'WORD'
     A 'WORD' is a contiguous group of non-whitespace characters,
     basically this jumps to past the next space.
     `B` goes back one 'WORD' as the clever among you may have suspected.
14. `x` deletes the char under the cursor.
     `X` deletes the char before the cursor.
15. Time to make our .vimrc, this is a configuration file that defines a set
     of commands we want Vim to run when it starts up. run `:e ~/.vimrc` and
     add a command to set the colorscheme when Vim starts up.
     E.g. `colorscheme desert`
     Search online if you get stuck!
16. Now you've got a .vimrc! You can store mappings, settings, functions and
     all sorts of cool things in there. Try to keep it organized, we'll learn
     about mappings in a bit!
17. To move to the next tip, run `vimprove next`.
     Make sure you're trying out each tip as you read it!
18. Try finishing off vimtutor today!
19. It's annoying reaching for escape all the time, lets fix it!
     `:imap jk <esc>` will map `jk` to the escape key, but only in insert mode!
     We'll talk about mapping more later, try putting this in your '.vimrc'
     Note that since a .vimrc is all commands, you don't need the leading `:`.
20. Use `I` to start inserting text at the beginning of the current line.
     Use `A` to insert text at the end of the current line.
21. Try `u` to undo your mistakes! Hit it multiple times to undo more.
     `<C-r>` to redo changes, (`<C-r>` means hold 'control' key and press 'r')
22. `f<char>` will move forward to the next <char> in the current line.
     `F<char>` does the same, but moves backwards in the current line.
23. `0` jumps to the beginning of the current line.
     `$` jumps to the end of the line.
24. `v` starts a visual selection.
     Use any motions you know to extend the selection.
25. {v} In visual mode, use `d` to delete the selection.
26. `yw` copies (yanks) one word into the clip-board
     `p` pastes whatever is in the clipboard.
27. {v} Press `y` to yank the currently selected text to the clipboard.
28. {v} Use `c` to 'change' your selection,
     That is, to delete it and enter insert mode.
29. `dd` deletes the current line.
30. `C` 'changes' from the cursor to the end of the line.
31. Things like `w`, `f<char>` and `$` are called 'motions'
     Things like `d`, `c`, and `y` are called 'operators'
     Operators use motions to define an area to perform their function on.
     Read up: (:h operator)
32. In the command `d$`:
     the `d` means 'delete' and the `$` means 'move to end of line'
     So `d$` means 'delete to the end of the line'
     You'll find most operators and motions can be combined in this way.
33. Oftentimes repeating an operator means "for the whole line"
     E.g. `yy`: yank one line, `dd`: delete one line, `cc`: change one line.
34. Enter search mode with `/`, type what you're looking for then press enter.
     `?` Searches backwards.
     P.S. you can also use Regular Expressions (:help regexp)
35. `n` finds the next search result, `N` finds the previous one.
     The behaviour is reversed when the search was started with `?`.
36. `V` starts a 'line-wise' visual selection.
37. `.` is a special command.
     It repeats the last change you made, but in a new spot.
     E.g. Use `cw` to change a word to something else, then move to a new word
     and press `.`, Vim will change that word to the new word as well!
     This is very helpful for repetitive tasks! See (:h .)
38. `a` starts insert mode at the position AFTER the cursor.
39. Try out some more operator + motion combos!
     Try `d/` then enter a search term to delete up to the first occurance!
     `yf.` will 'yank' up to and including the next period.
40. Most commands can take a numeric count. Type the number, then the command.
     E.g. `5dd` will delete 5 lines, `3n` searches forwards 3 occurences.
     Even `i` can take a count. Try `10i`, type something, then <esc>.
41. `o` starts insert on a new line BELOW the current one.
     `O` starts insert on a new line ABOVE the current one.
42. Time for something new, Mappings. Every key you press is mapped to
     something, right now the keys are mapped to their literal value, but we can
     change that. Any key-sequence can be 'mapped' any other key sequence.
     Try entering `:imap jk <esc>` then press return.
     Now, pressing `jk` in insert mode will act as though you pressed escape!
43. Note that you can specify a specific mode for a mapping to take place.
     imap is for insert, nmap is for normal, vmap is for visual and cmap is for
     the command line. For reasons I'll explain later, it's good practice to
     use the non-recursive versions of these:
     inoremap, nnoremap, vnoremap, cnoremap.
44. Add a few mappings to your `~/.vimrc` search online for ideas of some
     things to add.
45. When adding mappings it's a good idea to define a 'leader' key.
     This is a key that acts as a prefix for YOUR commands.
     Common choices for this key are `\`, `<space>` and `,`
     Since they're easy to use and their default functionality isn't vital.
     Set a leader in your `~/.vimrc` like this: `let mapleader='<key>'`
     where <key> is your leader of choice.
46. Time to use that leader for a mapping!
     Define a new mapping to save the current file.
     Try something similar to `nnoremap <leader>s :w<cr>`
47. Remember that mappings are very flexible and that even a single keystroke
     can be mapped to any keystrokes, functions, or plugins you like!
     Try to know what a key does before you map over it though, it might be
     useful!
48. `ZZ` is a quick way to save and quit a file.
49. `r<char>` replaces the character under the cursor with <char>.
50. Though most useful commands are mapped to single keys, some are mapped to
     combinations or use modifiers.
     <C-f> (That is, CTRL+f) will scroll forward one screen.
     <C-b> will scroll back one screen.
51. Any time you use something like a motion or search to jump around in vim,
     it keeps track of where you came from in something called the 'jumplist'.
     Use `<C-o>` and `<C-i>` to go backwards and forwards through the jump list.
     Try it now!
52. The `g` key is unique in that it doesn't represent any specific command on
     it's own. It acts as a prefix key for many lesser used commands.
     One useful g command is `gg` which jumps to the top of a file.
     You can also specify a count to jump to that line in the file.
53. `G` will jump to the end of a file, or if given a count, will jump to the
     specified line.
54. `t<char>` is very similar to `f<char>` except that it will move 'TILL' the
     given character, stopping on char before it.
     `T` will perform a 'till' search in the backwards direction.
55. `m<char>` where <char> is from a-z can be used to set a 'mark' in the
     file at the cursor's position. These marks are stored on memory and
     don't actually alter the file. Once a mark is set, you can jump back to
     that line at any time with `'<char>`
56. Any letter a-z can be used to label a mark, so try to label them with
     a mnemonic that has meaning to you.
57. Setting marks for capital letters A-Z with `m<char>` creates global marks.
     Pressing `'<char>` will jump to this line in the file (opening the file
     if necessary) from anywhere else in Vim.
58. ``` (the backtick key) acts similarly to `'` except it will move the
     cursor to the exact position the mark was set, as opposed to `'`
     which moves only to the proper line.
59. There are many other marks besides a-z and A-Z in Vim. Many of these are
     set automatically by Vim as you edit text. For example, the `^` mark
     contains the position of your last insert, and the `.` mark contains the
     position of your last change.
60. Just as there are many different marks in Vim, there are also many
     registers. Registers are simply a place where Vim can store text it needs
     to remember. Vim leaves the 26 registers a-z for your own use, and defines
     many other registers for its own use under-the-hood.
61. To specify that you'd like to use a specific register for your next
     command, prefix the command witch `"<char>` where <char> is the
     lower-case letter name of the register. E.g. `"ayy` will copy the current
     line into register 'a', to paste it back in later, use `"ap`.
62. Registers can also be specified when deleting or changing text.
     For instance `"hD` will delete from the cursor to the end of the line
     and will store all of the text in register h.
63. If a capital letter is used when specifying a register for a command, then
     any text specified by the command will be appended to the given register
     rather than replacing it. `"Pyip` will add the current paragraph to
     whatever was in the P register.
64. You can use `)` and `(` to jump to the next and previous sentence.
65. Use `}` `{` to jump to the next and previous paragraph.
66. To join the next line to the end of the current one, just push `J`.
67. When in visual mode you can press `o` to move your cursor from one end of
     the selection to the other.
68. The `K` command will look up the manual page for the word under the cursor
     It essentially just runs `man <word>` using your shell.
