(require 'clojure-mode)
(require 'paredit)
(require 'nrepl)

;; ClojureScript
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)
;(add-hook 'clojure-mode-hook 'midje-mode)
