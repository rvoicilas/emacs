;; Matlab setup

(load-library "matlab-load")

;; Setup some custom variables that will be sent to matlab when starting
(custom-set-variables '(matlab-shell-command-switches '("-nodesktop -nosplash")))

;; Runs the unit tests available in the current buffer.
;; NOTE: Requires that you have MTEST:
;; http://blogs.mathworks.com/steve/2009/02/03/mtest-a-unit-test-harness-for-matlab-code/
;; installed and in Matlab's path.
;; Small cavity here: Matlab has to have its current working dir pointed to the tests dir,
;; otherwise "runtests" will not work.
(defun run-matlab-test ()
  (interactive)
  (matlab-shell-run-command (concat "runtests "
		    (car (split-string (buffer-name) "\\.")))))

; Bind "C-c l" to run unit tests in matlab-mode
(defun map-run-matlab-test-keys ()
  (local-set-key (kbd "C-c l") 'run-matlab-test))

(add-hook 'matlab-mode-hook 'map-run-matlab-test-keys)

;; End Matlab setup
