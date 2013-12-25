(add-to-list
 'load-path
 (car (file-expand-wildcards "/usr/local/stow/OTP_R16B02/lib/erlang/lib/tools-*/emacs")))

(setq erlang-root-dir "/usr/local/stow/OTP_R16B02/lib/erlang")
(setq exec-path (cons "/usr/local/stow/OTP_R16B02/lib/erlang/bin" exec-path))

(add-to-list 'auto-mode-alist '("\\.rel$"))
(add-to-list 'auto-mode-alist '("\\.app$"))
(add-to-list 'auto-mode-alist '("\\.appSrc$"))
(add-to-list 'auto-mode-alist '("\\.app.src$"))
(add-to-list 'auto-mode-alist '("\\.hrl$"))
(add-to-list 'auto-mode-alist '("\\.erl$"))
(add-to-list 'auto-mode-alist '("\\.yrl$"))

(require 'erlang-start)
(require 'erlang-flymake)

(require 'distel)
(distel-setup)
