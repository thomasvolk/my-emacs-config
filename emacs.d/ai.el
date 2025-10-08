
(setq emacs-ai-provider (getenv "EMACS_EDITOR_AI"))
(setq ai-provider
  (if
    (eq emacs-ai-provider nil)
    (getenv "EDITOR_AI")
    emacs-ai-provider
  )
)

(when (string= "copilot" ai-provider)
  (progn
    (use-package copilot
	:vc (:url "https://github.com/copilot-emacs/copilot.el"
		:rev :newest
		:branch "main"))

    (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
    (global-set-key (kbd "C-c a") 'copilot-mode)
    (add-hook 'prog-mode-hook 'copilot-mode)
    (add-hook 'text-mode-hook 'copilot-mode)
  )
)

(when (string= "ellama" ai-provider)
  (use-package ellama
    :vc (:url "https://github.com/s-kostyaev/ellama"
                :rev :newest
                :branch "main")
    :ensure t
    :init
    ;; setup key bindings
    (setopt ellama-keymap-prefix "C-c e")
  )
)
