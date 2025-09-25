(when (string= "copilot" (getenv "EDITOR_AI"))
  (progn
    (use-package copilot
	:vc (:url "https://github.com/copilot-emacs/copilot.el"
		:rev :newest
		:branch "main"))

    (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
    (global-set-key (kbd "C-c a") 'copilot-mode)
  )
)

(when (string= "codeium" (getenv "EDITOR_AI"))
  (progn
    (use-package codeium
	  :vc (:url "https://github.com/Exafunction/codeium.el"
		     :rev :newest
		    :branch "main")
        :init
      ;; use globally
      (add-to-list 'completion-at-point-functions #'codeium-completion-at-point)
      ;; or on a hook
      (add-hook 'python-mode-hook
           (lambda ()
              (setq-local completion-at-point-functions '(codeium-completion-at-point))))

      ;; if you want multiple completion backends, use cape (https://github.com/minad/cape):
      ;; (add-hook 'python-mode-hook
      ;;     (lambda ()
      ;;         (setq-local completion-at-point-functions
      ;;             (list (cape-capf-super #'codeium-completion-at-point #'lsp-completion-at-point)))))
      ;; an async company-backend is coming soon!

      ;; codeium-completion-at-point is autoloaded, but you can
      ;; optionally set a timer, which might speed up things as the
      ;; codeium local language server takes ~0.2s to start up
      ;; (add-hook 'emacs-startup-hook
      ;;  (lambda () (run-with-timer 0.1 nil #'codeium-init)))

      ;; :defer t ;; lazy loading, if you want
      :config
      (setq use-dialog-box nil) 
    )

    (global-set-key (kbd "C-c a") 'codeium-install)
  )
)
