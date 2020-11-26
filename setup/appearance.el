(fset 'display-startup-echo-area-message #'ignore)
(fset 'yes-or-no-p #'y-or-n-p)

;;highlight current line
(global-hl-line-mode t)

(blink-cursor-mode -1)
(setq visible-bell nil)

(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;;Start with fullscreen frame
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq
   backup-by-copying t
   backup-directory-alist
    '(("." . "~/.emacs.d/backups/"))
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control -1)


(desktop-save-mode 1)

(provide 'appearance)
