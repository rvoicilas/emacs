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
(add-path "emacs/vendor/color-theme-tango-2")
(add-path "emacs/raduv")
)

; Clojure setup + paredit
(require 'clojure-mode)
(require 'paredit)
(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

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

;; Load various customizations
(load "raduv")
