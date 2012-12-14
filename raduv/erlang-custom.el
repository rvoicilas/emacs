(add-to-list
 'load-path
 (car (file-expand-wildcards "/usr/local/stow/OTP_R15B03-1/lib/erlang/lib/tools-*/emacs")))

(setq erlang-root-dir "/usr/local/stow/OTP_R15B03-1/lib/erlang")
(setq exec-path (cons "/usr/local/stow/OTP_R15B03-1/lib/erlang/bin" exec-path))

(require 'erlang-start)
(require 'flymake)

(require 'distel)
(distel-setup)