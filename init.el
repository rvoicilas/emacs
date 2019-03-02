(require 'cl)

(defvar emacs-root (if (or (eq system-type 'gnu/linux)
			   (eq system-type 'linux))
		       "/home/raduv/" "c:/home/raduv/")
"This is the emacs home directory - should be platform independent")

(labels ((add-path (p)
		   (add-to-list 'load-path
				(concat emacs-root p))))

(add-path "emacs/vendor")

(add-path "emacs/jdee-2.4.1/lisp")
(add-path "emacs/vendor/gradle-mode")

(add-path "emacs/vendor/python-mode")
(add-path "emacs/vendor/pymacs")
(add-path "emacs/vendor/tuareg-mode")
(add-path "emacs/vendor/matlab-emacs")
(add-path "emacs/vendor/clojure-mode")
(add-path "emacs/vendor/paredit")
(add-path "emacs/vendor/cider")
(add-path "emacs/vendor/emacs-for-python")
(add-path "emacs/vendor/rinari")
(add-path "emacs/vendor/rspec-mode")
(add-path "emacs/vendor/puppet")
(add-path "emacs/vendor/rvm")
(add-path "emacs/vendor/distel/elisp")
(add-path "emacs/init.d")
)

; list the packages you want
(setq package-list '(
		     ag
		     alchemist
		     auto-complete
		     ample-theme
		     coffee-mode
		     elixir-mode
		     ess
		     flycheck
		     go-mode
		     go-eldoc
		     helm
		     helm-ag
		     helm-projectile
		     ido-vertical-mode
		     magit
		     ocp-indent
		     paredit
		     rust-mode
		     scala-mode
		     sbt-mode
		     tide
		     typescript-mode
		     ujelly-theme
		     utop
		     projectile
		     rust-mode
		     flymake-rust
		     racer
		     cargo
		     ))

(require 'package)

; list the repositories containing them
(setq
 package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")))

; activate all the packages
(package-initialize)

; large packages
(setq url-http-attempt-keepalives nil)


;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'use-package)

(use-package ensime
  :ensure t
  :pin melpa-stable)

; these don't actually require a dedicated file in init.d/ to be loaded
(require 'magit)
(require 'ess-site)

;; Load various customizations
(load "init.d")
