;; Delete marked region when typing
(delete-selection-mode 1)

;; Display keystroke in minibuffer after short time
(setq echo-keystrokes 0.1)

;; Allow C-x C-u/l to upper/lowercase region
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Start server for emacsclient shell command
(server-start)
(provide 'misc)
