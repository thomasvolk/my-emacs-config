
(defun my-little-help ()
  (interactive)
  (with-help-window "*my little help*"
    (princ
"My Little Help Page
-------------------

* Common Commands:
   C-x C-f                      | Open file browser
   C-x C-c                      | Quit Emacs
   F10                          | Open menu
   C-g                          | Quit current action
* Navigating
   C-x o                        | Switch between windows
   C-x b                        | Switch between buffers
   C-x 0                        | Close window
   C-x Right                    | Next buffer
   C-x Left                     | Prev buffer
* Editing
   C-_                          | Undo
   C-/                          | Undo
   C-g C-_                      | Redo
   C-g C-/                      | Redo
   C-u <n> <input>              | Repeates actions (e.g. C-u 8 * is adding eight * to the buffer)
   SPC a a                      | Toggle abbrev mode
* Shell
   SPC x s                      | Open shell
   SPC p c                      | Compile project
   M-!                          | Execute shell command
   M-|                          | Pipe current selection to a shell command
   C-u M-|                      | Like M-| and replace the selection
   M-x shell                    | Open shell
   M-x term                     | Open terminal
             | C-c o            | Switch between windows (from terminal)
             | C-c b            | Switch between buffers (from terminal)
* Spell check
   M-$                          | Correct the current word
   C-c l                        | Change dictionary
   M-x ispell                   | Spellcheck buffer
   M-x ispell-change-dictionary | Change spelling language
* Development
   M-x compile                  | Compile
   C-c p !                      | Run shell command in project
   C-c C-o                      | Open outline
   M-:                          | Evaluate elisp expression
* Org Mode Commands
   TAB                          | Un-/Fold a section
   C-c C-c                      | Execute a code block
   C-c C-q                      | Add tag to a section (example TOC)
   <s TAB                       | Add source block
   C-c C-o                      | Open a link
   C-c C-l                      | create a link
* Projectile
   C-c p p                      | Switch project
   C-c p f                      | Open file in project
* Git
   C-x g                        | Enter magit mode |
             | h                | View help
             | s                | Stage changes
             | c c              | Create commit
             | C-c C-c          | Exit editor and commit
             | P u              | Push changes
             | q                | Quit
* AI
   C-c e c c                    | Ellama code complete
   C-c e a i                    | Ellama chat
   C-c a                        | Copilot toggle
   <leader> F3                  | Copilot toggle
")))
