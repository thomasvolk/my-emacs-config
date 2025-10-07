(use-package lsp-java
  :vc (:url "https://github.com/emacs-lsp/lsp-java"
	    :rev :newest
	    :branch "master"))

(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)
