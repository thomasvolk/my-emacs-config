;; Major mode for OCaml programming
(use-package tuareg
  :ensure t
  :mode (("\\.ocamlinit\\'" . tuareg-mode))
  :custom
  (tuareg-opam-insinuate t))

;; Major mode for editing Dune project files
(use-package dune
  :ensure t)

;; utop configuration
(use-package utop
  :ensure t
  :config
  (add-hook 'tuareg-mode-hook #'utop-minor-mode))
