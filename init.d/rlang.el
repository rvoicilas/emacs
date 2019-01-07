(require 'flycheck)
(add-hook 'ess-mode-hook
          (lambda () (flycheck-mode t)))
