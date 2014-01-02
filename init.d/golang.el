(require 'go-mode)

(require 'auto-complete-config)

(add-to-list 'ac-modes 'go-mode)
(add-to-list 'ac-dictionary-directories "~/emacs/vendor/auto-complete/dict")
(ac-config-default)
