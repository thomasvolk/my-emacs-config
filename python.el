(use-package lsp-mode
  :ensure t
  :hook ((python-mode . lsp-deferred))
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(use-package company
  :ensure t
  :hook (after-init . global-company-mode))

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp-deferred))))

(setq lsp-pyright-use-library-code-for-types t)
(setq lsp-pyright-auto-import-completions t)
(setq lsp-pyright-auto-search-paths t)
