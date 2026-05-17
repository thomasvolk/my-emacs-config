;; Redirect Custom writes to a separate file so auto-generated code
;; never pollutes hand-edited modules.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(setq column-number-mode t)
(global-display-line-numbers-mode t)

(load-theme 'timu-macos t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode +1))
