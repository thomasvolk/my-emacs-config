;;; early-init.el --- Early initialization -*- lexical-binding: t -*-

;; Defer GC during startup; restored after init.
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold (* 16 1024 1024))))

;; Prevent package.el from initializing before init.el takes over.
;; init.el calls (package-initialize) itself, so this avoids a double init.
(setq package-enable-at-startup nil)

;; Suppress the startup UI flash before the theme loads.
(setq inhibit-startup-screen t)
(push '(menu-bar-lines . 0)   default-frame-alist)
(push '(tool-bar-lines . 0)   default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(push '(horizontal-scroll-bars) default-frame-alist)
