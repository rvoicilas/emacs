
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

(setq opam-bin (substring (shell-command-to-string "opam config var bin 2> /dev/null") 0 -1))
(setq merlin-command (concat opam-bin "/ocamlmerlin"))

(setq utop-command "opam config exec -- utop -emacs")


(require 'ocp-indent)
(require 'merlin)

(require 'utop)
;(require 'utop-minor-mode)

(add-to-list 'auto-mode-alist '("\\.ml[iylp]?" . tuareg-mode))

(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the caml debugger" t)
(autoload 'merlin-mode "merlin" "Merlin mode" t)
(autoload 'utop "utop" "Toplevel for ocaml" t)
(autoload 'utop-minor-mode "utop" "Minor mode for utop" t)

(add-hook 'tuareg-mode-hook 'merlin-mode)
(add-hook 'tuareg-mode-hook 'utop-minor-mode)

;; Enable Merlin auto-completion
(setq merlin-use-auto-complete-mode 'easy)

(setq merlin-command 'opam)
