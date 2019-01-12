(setq inhibit-startup-message t)
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "<f5>") 'revert-buffer)

(use-package try
  :ensure t)

(use-package which-key
      :ensure t
      :config (which-key-mode))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(defalias 'list-buffers 'ibuffer)

(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces '(aw-leading-char-face
     ((t (:inherit ace-jump-face-foreground :height 3.0)))))
    ))

(use-package counsel
  :ensure t
  )

;; very nice search engine and add heighlights for fuzzy search
(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)
	 ("C-r" . swiper)
	 ("C-c C-r" . ivy-resume)
	 ("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))

(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

(use-package color-theme
  :ensure t)

(use-package zenburn-theme
  :ensure t
  :config (load-theme 'zenburn t))

;(load-theme 'leuven t)
(load-theme 'deeper-blue t)

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode))

;Put highlight on the current line whereis courser.
(global-hl-line-mode t)

;beacon is to make some animated highlight to show where is your courser now.
(use-package beacon
  :ensure t
  :config
  (beacon-mode 1))

;hungry-delete is to delete multiple empty space lines at once.
(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode))

(use-package aggressive-indent
  :ensure t
  :config
  (global-aggressive-indent-mode 1))

(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C-=") 'er/expand-region))

(use-package iedit
  :ensure t)
