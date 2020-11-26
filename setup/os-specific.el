(when (eq system-type 'darwin)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta)
  (setq ns-function-modifier 'hyper)

  (setq delete-by-moving-to-trash t
        trash-directory "~/.Trash/emacs")

  ;; Don't open files from the workspace in a new frame
  (setq ns-pop-up-frames nil)

  (add-to-list 'ido-ignore-files "\\.DS_Store")
)

(provide 'os-specific)
