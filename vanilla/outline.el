;; Outline and code structure navigation
(use-package outline
  :ensure nil ;; built-in
  :hook (prog-mode . outline-minor-mode)
  :config
  (setq outline-minor-mode-prefix "\C-c\C-o"))
