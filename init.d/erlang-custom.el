(setq erlang-root-dir (format "%s%s%s" "/usr/local/stow/" (getenv "ERLANG_VERSION") "/lib/erlang"))

(add-to-list
 'load-path
 (car (file-expand-wildcards (format "%s%s" erlang-root-dir "/lib/tools-*/emacs"))))

(setq exec-path (cons (format "%s%s" erlang-root-dir "/bin") exec-path))

(add-to-list 'auto-mode-alist '("\\.rel$"))
(add-to-list 'auto-mode-alist '("\\.app$"))
(add-to-list 'auto-mode-alist '("\\.appSrc$"))
(add-to-list 'auto-mode-alist '("\\.app.src$"))
(add-to-list 'auto-mode-alist '("\\.hrl$"))
(add-to-list 'auto-mode-alist '("\\.erl$"))
(add-to-list 'auto-mode-alist '("\\.yrl$"))
(add-to-list 'auto-mode-alist '("rebar\\.config$" . erlang-mode))

(require 'erlang-start)
(require 'erlang-flymake)

(require 'distel)
(distel-setup)

;; flymake

(erlang-flymake-only-on-save)

(setq flymake-gui-warnings-enabled nil)

(defun flymake-next-error()
  (interactive)
  (flymake-goto-next-error)
  (flymake-display-err-menu-for-current-line)
)

(defun flymake-next-error-hook()
  (local-set-key (kbd "C-c C-v") 'flymake-next-error)
)

(add-hook 'erlang-mode-hook 'flymake-next-error-hook)
