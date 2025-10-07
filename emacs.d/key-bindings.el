;; Key bindings
(global-set-key (kbd "<C-return>") 'dabbrev-completion)
(global-set-key (kbd "M-#") 'dabbrev-expand)
(global-set-key (kbd "C-c n n") 'treemacs-select-window)
(global-set-key (kbd "C-c n t") 'treemacs)
(global-set-key (kbd "C-c n p") 'treemacs-display-current-project-exclusively)

(defun refresh ()
  (interactive)
  (load "~/.emacs.d/init.el"))

;; evil bindings
(evil-set-leader 'motion (kbd "SPC"))
;; treemacs
(evil-define-key 'normal 'global (kbd "<leader>n n") 'treemacs-select-window)
(evil-define-key 'normal 'global (kbd "<leader>n t") 'treemacs)
(evil-define-key 'normal 'global (kbd "<leader>n p") 'treemacs-display-current-project-exclusively)
;; buffer
(evil-define-key 'normal 'global (kbd "<leader>b b") 'ibuffer)
(evil-define-key 'normal 'global (kbd "<leader>b m") 'buffer-menu-open)
(evil-define-key 'normal 'global (kbd "<leader>b <left>") 'previous-buffer)
(evil-define-key 'normal 'global (kbd "<leader>b <right>") 'next-buffer)
;; shell commands / compile / reload
(evil-define-key 'normal 'global (kbd "<leader>x x") 'shell-command)
(evil-define-key 'normal 'global (kbd "<leader>x s") 'shell)
(evil-define-key 'normal 'global (kbd "<leader>x c") 'compile)
(evil-define-key 'normal 'global (kbd "<leader>x r") 'refresh)
;; windows
(evil-define-key 'normal 'global (kbd "<leader>w <left>") 'windmove-left)
(evil-define-key 'normal 'global (kbd "<leader>w <right>") 'windmove-right)
(evil-define-key 'normal 'global (kbd "<leader>w <up>") 'windmove-up)
(evil-define-key 'normal 'global (kbd "<leader>w <down>") 'windmove-down)
(evil-define-key 'normal 'global (kbd "<leader>w q") 'quit-window)
;; projects
(evil-define-key 'normal 'global (kbd "<leader>p p") 'projectile-switch-project)
(evil-define-key 'normal 'global (kbd "<leader>p a") 'projectile-add-known-project)
(evil-define-key 'normal 'global (kbd "<leader>p g") 'projectile-grep)
(evil-define-key 'normal 'global (kbd "<leader>p f") 'projectile-find-file)
(evil-define-key 'normal 'global (kbd "<leader>p c") 'projectile-compile-project)
;; abbrev mode
(evil-define-key 'normal 'global (kbd "<leader>a a") 'abbrev-mode)
;; help
(evil-define-key 'normal 'global (kbd "<leader>h h") 'my-little-help)

