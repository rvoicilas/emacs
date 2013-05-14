;; Global Emacs settings

(require 'auto-complete)

;; Enable syntax highlighting
(global-font-lock-mode t)

;; Enable auto complete
(global-auto-complete-mode t)

;; Always show column number
(setq column-number-mode t)

;; No auto save by default
(setq auto-save-default nil)

;; No startup message by default
(setq inhibit-startup-message t)

;; No backup files by default
(setq make-backup-files nil)

;; Comment this out if you want the default font size
(set-face-attribute 'default nil :height 110)

;; Current working directory set to root emacs root
(setq default-directory emacs-root)

;; Always show matching parens
(show-paren-mode t)

;; Turn on current line higlightning
(global-hl-line-mode 1)

;; Cursor color white by default
(set-cursor-color "white")

;; Delete trailing whitespaces
;; (add-hook 'before-save-hook (lambda ()(delete-trailing-whitespace)))

;; Lose the UI
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;; Keep the menu bar for now
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
