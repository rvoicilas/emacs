(require 'go-mode)
(require 'go-autocomplete)
(require 'auto-complete-config)

(add-to-list 'ac-modes 'go-mode)
(add-to-list 'ac-dictionary-directories "~/emacs/vendor/auto-complete/dict")
(ac-config-default)

(add-hook 'before-save-hook #'gofmt-before-save)
(add-hook 'go-mode-hook 'go-eldoc-setup)
