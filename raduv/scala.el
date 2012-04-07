(require 'scala-mode-auto)

(setq yas/scala-snippets-directory "~/emacs/vendor/scala-mode/contrib/yasnippet/snippets")
(yas/load-directory yas/scala-snippets-directory)

(add-hook 'scala-mode-hook
	  '(lambda ()
	     (yas/minor-mode-on)
	     ))

(add-hook 'scala-mode-hook
	  '(lambda ()
	     (scala-mode-feature-electric-mode)
	     ))