;; Key bindings
(global-set-key (kbd "<C-return>") 'dabbrev-completion)
(global-set-key (kbd "M-#") 'dabbrev-expand)
(global-set-key (kbd "C-c n n") 'treemacs-select-window)
(global-set-key (kbd "C-c n t") 'treemacs)
(global-set-key (kbd "C-c n p") 'treemacs-display-current-project-exclusively)

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
;; shell
(evil-define-key 'normal 'global (kbd "<leader>x x") 'shell-command)
;; windows
(evil-define-key 'normal 'global (kbd "<leader>w <left>") 'windmove-left)
(evil-define-key 'normal 'global (kbd "<leader>w <right>") 'windmove-right)
(evil-define-key 'normal 'global (kbd "<leader>w <up>") 'windmove-up)
(evil-define-key 'normal 'global (kbd "<leader>w <down>") 'windmove-down)
;; projects
(evil-define-key 'normal 'global (kbd "<leader>p p") 'projectile-switch-project)
(evil-define-key 'normal 'global (kbd "<leader>p a") 'projectile-add-known-project)
(evil-define-key 'normal 'global (kbd "<leader>p s") 'projectile-grep)
