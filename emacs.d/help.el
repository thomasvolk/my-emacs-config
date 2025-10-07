
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
* Editing
   C-_                          | Undo
   C-/                          | Undo
   C-g C-_                      | Redo
   C-g C-/                      | Redo
   C-u <n> <input>              | Repeates actions (e.g. C-u 8 * is adding eight * to the buffer)
* Shell
   M-x term                     | Open terminal
   M-x shell                    | Open shell
   M-!                          | Execute shell command
* Spell check
   M-$                          | Spellcheck the word below the cursor
   M-x ispell                   | Spellcheck buffer
   M-x ispell-change-dictionary | Change spelling language
* Development
   M-x compile                  | Compile project
   C-c C-o                      | Open outline
* Org Mode Commands
   TAB                          | Un-/Fold a section
   C-c C-c                      | Execute a code block
   C-c C-q                      | Add tag to a section (example TOC)
* Projectile
   C-c p p                      | Switch project
   C-c p f                      | Open file in project

")))
