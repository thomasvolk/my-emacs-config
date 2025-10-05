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

(when (string= "ellama" (getenv "EDITOR_AI"))
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
