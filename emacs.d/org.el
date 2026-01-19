(require 'org-tempo)

(add-to-list 'org-modules 'org-tempo t)

(use-package toc-org
  :ensure t
  :init
  :config)

(if (require 'toc-org nil t)
    (progn
      (add-hook 'org-mode-hook 'toc-org-mode))
  (warn "toc-org not found"))
 
;; active Babel languages
(org-babel-do-load-languages
'org-babel-load-languages
'((shell . t) (java . t) (python . t) (emacs-lisp . t) (js . t)))
