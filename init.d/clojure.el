(require 'clojure-mode)
(require 'paredit)
(require 'cider)

;; ClojureScript
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(setq nrepl-hide-special-buffers t)
(setq nrepl-log-messages t)
