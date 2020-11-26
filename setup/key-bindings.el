(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(windmove-default-keybindings) ;; Shift+direction

(defmacro λ (&rest body)
  `(lambda ()
     (interactive)
     ,@body))

;; Move more quickly
(global-set-key (kbd "C-S-n") (λ (ignore-errors (next-line 5))))
(global-set-key (kbd "C-S-p") (λ (ignore-errors (previous-line 5))))
(global-set-key (kbd "C-S-f") (λ (ignore-errors (forward-char 5))))
(global-set-key (kbd "C-S-b") (λ (ignore-errors (backward-char 5))))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'key-bindings)
