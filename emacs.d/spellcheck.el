(use-package flyspell
  :hook ((text-mode . flyspell-mode)
	 (prog-mode . flyspell-prog-mode))
  :bind (:map flyspell-mode-map
	               ("C-;" . ispell-word)))

(global-set-key (kbd "C-c l") 'ispell-change-dictionary)
(setq-default ispell-dictionary "en_US")  ;; Default to English
