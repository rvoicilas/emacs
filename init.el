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
)

; load my theme
(load-file (concat emacs-root "emacs/colors/color-theme-blackboard.el"))
(require 'color-theme)
(color-theme-blackboard)

(require 'python)
(require 'auto-complete)
(require 'magit)

(global-font-lock-mode t)

; This is not really safe
(setq make-backup-files nil)