;;; company.el --- -*- lexical-binding: t -*-
(use-package company
  :ensure t
  :hook (after-init . global-company-mode))

(setq tab-always-indent 'complete)
