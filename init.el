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
)

; OCaml setup
(add-to-list 'auto-mode-alist '("\\.ml[iylp]?" . tuareg-mode))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the caml debugger" t)

(require 'python)
(require 'auto-complete)
(require 'magit)
(require 'rinari)


(global-font-lock-mode t)
(global-auto-complete-mode t)
(setq column-number-mode t)
(setq auto-save-default nil)
(setq inhibit-startup-message t)
(setq make-backup-files nil)

; load a color theme
(load-file (concat emacs-root "emacs/colors/color-theme-tango-2/color-theme-tango-2.el"))
(require 'color-theme)
(color-theme-tango-2)
;(load-file (concat emacs-root "emacs/colors/color-theme-blackboard.el"))
;(color-theme-blackboard)