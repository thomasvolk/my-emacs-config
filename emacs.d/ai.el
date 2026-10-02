;;; ai.el --- -*- lexical-binding: t -*-

(setq emacs-ai-provider (getenv "EMACS_EDITOR_AI"))
;; Fall back to "" so string-search doesn't fail when neither variable is
;; set (e.g. a daemon started by launchd without the shell environment).
(setq ai-provider (or emacs-ai-provider (getenv "EDITOR_AI") ""))

(when (string-search "copilot" ai-provider)
  (progn
    (use-package copilot
	:vc (:url "https://github.com/copilot-emacs/copilot.el"
		:rev :newest
		:branch "main"))

    (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
    (global-set-key (kbd "C-c a") 'copilot-mode)
    (setq copilot-indent-offset-warning-disable t)
  )
)

(when (string-search "ellama" ai-provider)
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
