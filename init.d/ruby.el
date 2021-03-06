(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Berksfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile.lock$" . ruby-mode))

(require 'rvm)
(require 'rinari)
(require 'rspec-mode)

(eval-after-load 'ruby-mode
  '(progn
     (rvm-use-default)

     (require 'rcodetools)
     (define-key ruby-mode-map (kbd "C-c C-c") 'xmp)))

; (global-rinari-mode)

(setq ruby-deep-arglist nil)
(setq ruby-deep-indent-paren nil)
(setq ruby-deep-indent-paren-style nil)

(autoload 'rspec-mode "rspec-mode")
(add-hook 'ruby-mode-hook (lambda () (rspec-mode)))
