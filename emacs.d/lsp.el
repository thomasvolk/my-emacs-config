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
  (typescript-mode . eglot-ensure)
)
