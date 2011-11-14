(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
				  global-semanticdb-minor-mode
				  global-semantic-idle-summary-mode
				  global-semantic-mru-bookmark-mode))

(semantic-mode 1)
(require 'malabar-mode)
; FIXME: Stop hardcoding this
(setq malabar-groovy-lib-dir "~/emacs/vendor/malabar-1.4.0/lib")
(add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))