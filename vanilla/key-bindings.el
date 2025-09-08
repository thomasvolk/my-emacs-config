;; Key bindings
(global-set-key (kbd "<C-return>") 'dabbrev-completion)
(global-set-key (kbd "M-#") 'dabbrev-expand)
(global-set-key (kbd "C-c n n") 'treemacs-select-window)
(global-set-key (kbd "C-c n t") 'treemacs)
(global-set-key (kbd "C-c n p") 'treemacs-display-current-project-exclusively)

;; evil bindings
(evil-set-leader 'motion (kbd "SPC"))
(evil-define-key 'normal 'global (kbd "<leader>n n") 'treemacs-select-window)
(evil-define-key 'normal 'global (kbd "<leader>n t") 'treemacs)
(evil-define-key 'normal 'global (kbd "<leader>n p") 'treemacs-display-current-project-exclusively)
(evil-define-key 'normal 'global (kbd "<leader>b b") 'ibuffer)
(evil-define-key 'normal 'global (kbd "<leader>x x") 'shell-command)
(evil-define-key 'normal 'global (kbd "<leader>w <left>") 'windmove-left)
(evil-define-key 'normal 'global (kbd "<leader>w <right>") 'windmove-right)
(evil-define-key 'normal 'global (kbd "<leader>w <up>") 'windmove-up)
(evil-define-key 'normal 'global (kbd "<leader>w <down>") 'windmove-down)
