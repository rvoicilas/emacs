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
(add-path "emacs/vendor/coffee-mode")
(add-path "emacs/vendor/ess/lisp")
(add-path "emacs/vendor/matlab-emacs")
(add-path "emacs/vendor/clojure-mode")
(add-path "emacs/vendor/paredit")
(add-path "emacs/vendor/emacs-for-python")
(add-path "emacs/vendor/color-theme-tango-2")
(add-path "emacs/vendor/malabar-1.4.0/lisp")
(add-path "emacs/vendor/color-theme-6.6.0")
(add-path "emacs/vendor/scala-mode")
(add-path "emacs/raduv")
)

; Clojure setup + paredit
(require 'clojure-mode)
(require 'paredit)
(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)
(add-hook 'clojure-mode-hook 'midje-mode)

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


(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Load various customizations
(load "raduv")
