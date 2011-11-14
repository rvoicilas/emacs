(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
				  global-semanticdb-minor-mode
				  global-semantic-idle-summary-mode
				  global-semantic-mru-bookmark-mode))

(semantic-mode 1)
(require 'malabar-mode)
(setq malabar-groovy-lib-dir "/tmp")
(add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))