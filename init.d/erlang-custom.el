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

(erlang-flymake-only-on-save)

;; flymake
(defun flymake-next-error()
  (interactive)
  (flymake-goto-next-error)
  (flymake-display-err-menu-for-current-line)
)

(defun flymake-next-error-hook()
  (local-set-key (kbd "C-c C-v") 'flymake-next-error)
)

(add-hook 'erlang-mode-hook 'flymake-next-error-hook)
