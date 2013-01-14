(require 'scala-mode-auto)
(require 'ensime)

(add-hook 'scala-mode-hook
	  '(lambda ()
	     (yas/minor-mode-on)
	     ))

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
