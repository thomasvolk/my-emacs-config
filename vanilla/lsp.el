(use-package flycheck
  :ensure t
)

(use-package tuareg
  :ensure t
  :custom
  (tuareg-opam-insinuate t))

(use-package ocaml-eglot
  :ensure t
  :hook
  (tuareg-mode . ocaml-eglot)
  (ocaml-eglot . eglot-ensure)
  (python-mode . eglot-ensure)
)

(use-package company
  :ensure t
  :hook (after-init . global-company-mode))

(setq tab-always-indent 'complete)

