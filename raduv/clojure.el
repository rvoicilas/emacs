(require 'clojure-mode)
(require 'paredit)
(require 'nrepl)

;; ClojureScript
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

;; enabled eldoc in clojure buffers
(add-hook 'nrepl-interaction-mode-hook
	  'nrepl-turn-on-eldoc-mode)

;; enabled paredit in the nREPL buffer
(add-hook 'nrepl-mode-hook 'paredit-mode)
