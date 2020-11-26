(package-initialize)

(add-to-list 'load-path (concat user-emacs-directory "setup/"))

(setq custom-file (expand-file-name "custom.el" (concat user-emacs-directory "setup/")))
(load custom-file)

(require 'packages)

(when (not (package-installed-p 'use-package))
  (package-install 'use-package))
(setq use-package-always-ensure t)

(use-package dash)

(use-package undo-tree
  :bind
  ("C-x u" . undo-tree-visualize))

(use-package flx)
(use-package flx-ido
  :ensure t
  :init
  (setq ido-use-faces nil)
  :config
  (flx-ido-mode 1))

(use-package ido-vertical-mode)
(use-package ido-at-point)
(use-package ido-ubiquitous)
(use-package smooth-scrolling
  :config
  (smooth-scrolling-mode 1)
  )

(use-package smex
  :bind
  (("M-x" . smex)
   ("M-X" . smex-major-mode-commands)))

(use-package zenburn-theme
  :config
  (load-theme 'zenburn))

(use-package multiple-cursors
  :bind
  (("H-SPC" . set-rectangular-region-anchor)))

(use-package browse-kill-ring
  :bind
  ("C-c y" . browse-kill-ring))

(use-package git-commit
  :init
  (global-git-commit-mode))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(require 'os-specific)
(require 'appearance)
(require 'setup-ido)
(require 'key-bindings)
(require 'misc)
