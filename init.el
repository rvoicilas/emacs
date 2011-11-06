(require 'cl)

(defvar emacs-root (if (or (eq system-type 'gnu/linux)
			   (eq system-type 'linux))
		       "/home/raduv/" "c:/home/raduv/")
"This is the emacs home directory - should be platform independent")

(labels ((add-path (p)
		   (add-to-list 'load-path
				(concat emacs-root p))))

(add-path "emacs/vendor")
(add-path "emacs/vendor/magit")
(add-path "emacs/vendor/python-mode")
(add-path "emacs/vendor/pymacs")
(add-path "emacs/vendor/auto-complete")
(add-path "emacs/vendor/tuareg")
(add-path "emacs/vendor/rinari")
(add-path "emacs/vendor/js2-mode")
(add-path "emacs/vendor/coffee-mode")
(add-path "emacs/vendor/ess/lisp")
(add-path "emacs/vendor/matlab-emacs")
(add-path "emacs/vendor/clojure-mode")
(add-path "emacs/vendor/paredit")
(add-path "emacs")
)

; Clojure setup + paredit
(require 'clojure-mode)
(require 'paredit)
(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

; OCaml setup
(add-to-list 'auto-mode-alist '("\\.ml[iylp]?" . tuareg-mode))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the caml debugger" t)

; js2-mode setup
; M-x byte-compile-file RET <path to js2-mode.el> RET
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(require 'python)
(require 'auto-complete)
(require 'magit)
(require 'rinari)
(require 'coffee-mode)
(require 'ess-site)

; Coffeescript setup
(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
          '(lambda() (coffee-custom)))

(global-font-lock-mode t)
(global-auto-complete-mode t)
(setq column-number-mode t)
(setq auto-save-default nil)
(setq inhibit-startup-message t)
(setq make-backup-files nil)

; comment this out if you want the default font size
(set-face-attribute 'default nil :height 100)

; cwd set to root emacs root
(setq default-directory emacs-root)

; load a color theme
(load-file (concat emacs-root "emacs/colors/color-theme-tango-2/color-theme-tango-2.el"))
(require 'color-theme)
(color-theme-tango-2)
;(load-file (concat emacs-root "emacs/colors/color-theme-blackboard.el"))
;(color-theme-blackboard)

;; Always show matching parens
(show-paren-mode t)

;; Delete trailing whitespaces
(add-hook 'before-save-hook (lambda ()(delete-trailing-whitespace)))

;; Lose the UI
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;; Keep the menu bar for now
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Load various customizations
(load "custom.el")
