(defun js-custom ()
  "js-mode-hook"
  (setq js-indent-level 2)
  (setq tab-width 4)
  (setq indent-tabs-mode t))

(add-hook 'js-mode-hook 'js-custom)
