(require 'cl)

(defvar emacs-root (if (or (eq system-type 'gnu/linux)
			   (eq system-type 'linux))
		       "/home/raduv/" "c:/home/raduv/")
"This is the emacs home directory - should be platform independent")

(labels ((add-path (p)
		   (add-to-list 'load-path
				(concat emacs-root p))))

(add-path "emacs/vendor")
(add-path "emacs/vendor/auto-complete")
(add-path "emacs/vendor/auto-complete/lib/popup")

;required by magit
(add-path "emacs/vendor/git-modes")
(add-path "emacs/vendor/magit")

(add-path "emacs/vendor/python-mode")
(add-path "emacs/vendor/pymacs")
(add-path "emacs/vendor/tuareg-mode")
(add-path "emacs/vendor/ess/lisp")
(add-path "emacs/vendor/matlab-emacs")
(add-path "emacs/vendor/clojure-mode")
(add-path "emacs/vendor/paredit")
(add-path "emacs/vendor/nrepl")
(add-path "emacs/vendor/emacs-for-python")
(add-path "emacs/vendor/malabar-1.4.0/lisp")
(add-path "emacs/vendor/scala-mode2")
(add-path "emacs/vendor/ensime/dist/elisp")
(add-path "emacs/vendor/rinari")
(add-path "emacs/vendor/rspec-mode")
(add-path "emacs/vendor/puppet")
(add-path "emacs/vendor/rvm")
(add-path "emacs/vendor/distel/elisp")
(add-path "emacs/vendor/coffee-mode")
(add-path "emacs/vendor/go-mode")
(add-path "emacs/vendor/monokai-theme")
(add-path "emacs/vendor/themes") ;; color themes
(add-path "emacs/init.d")
)

; these don't actually require a dedicated file in init.d/ to be loaded
(require 'python)
(require 'magit)
(require 'ess-site)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Load various customizations
(load "init.d")
