(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile.lock$" . ruby-mode))

(require 'rvm)
(require 'rinari)
(require 'rspec-mode)

(rvm-use-default)

(eval-after-load 'ruby-mode
  '(progn
     (rvm-use-default)

     (require 'rcodetools)
     (define-key ruby-mode-map (kbd "C-c C-c") 'xmp)))
