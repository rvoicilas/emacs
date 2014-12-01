(require 'clojure-mode)
(require 'paredit)
(require 'cider)

;; ClojureScript
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

;; enabled eldoc in clojure buffers
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

;; enabled paredit in the nREPL buffer
(add-hook 'ciber-mode-hook 'paredit-mode)

;; hide *nrepl-connection* and *nrepl-server* buffers from appearing when C-x b
(setq nrepl-hide-special-buffers t)
