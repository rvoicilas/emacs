;; Global Emacs settings

(require 'auto-complete)

;; ido setup
(require 'ido)
(require 'ido-vertical-mode)
(ido-mode t)
(ido-vertical-mode)
(setq ido-use-faces t)
(setq ido-vertical-show-count t)

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
;; (set-face-attribute 'default nil :height 100)

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

;; The buffer scrolls by only one line, without repositioning
;; the cursor to the center of the screen
(setq scroll-step 1)

;; C mode settings
;; (setq-default c-basic-offset 4
;; 	      tab-width 4
;; 	      indent-tabs-mode t)

(require 'helm)
(require 'helm-projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
