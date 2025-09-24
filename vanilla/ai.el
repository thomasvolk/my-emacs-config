(if (string= "copilot" (getenv "EDITOR_AI"))
  (
    (use-package copilot
	:vc (:url "https://github.com/copilot-emacs/copilot.el"
		:rev :newest
		:branch "main"))

    (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
    (global-set-key (kbd "C-c a") 'copilot-mode)
  )
  nil
)

(if (string= "codeium" (getenv "EDITOR_AI"))
    (use-package codeium
      :vc (:url "https://github.com/Exafunction/codeium.el"
            :rev :newest
            :branch "main")
      :init
      (add-to-list 'completion-at-point-functions #'codeium-completion-at-point)
      :config
      (setq use-dialog-box nil)
      ;; Add Codeium to company backends
      (add-to-list 'company-backends 'codeium-company)
      ;; Run M-x codeium-install after installation
    )
    nil
)
