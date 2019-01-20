;; Put highlight on the current line whereis courser.
(global-hl-line-mode t)
(global-visual-line-mode 1)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
(fringe-mode 5)
(show-paren-mode t)

(use-package spacemacs-theme
  :straight t
  :defer t
  :custom
  (spacemacs-theme-comment-bg nil)
  (spacemacs-theme-comment-italic t))
;; If I ever want to use original comment color with italics together,
;; I should uncomment these 2 lines.
;; See https://github.com/nashamri/spacemacs-theme/issues/104
;; (custom-set-variable '(spacemacs-theme-custom-colors
;;                        '((comment-light . "#2aa1ae"))))

;; Enable switching between light and dark theme with shortcut <f6>
(use-package heaven-and-hell
  :straight t
  :init
  (setq heaven-and-hell-theme-type 'light)
  (setq heaven-and-hell-themes
	'((light . spacemacs-light)
	  (dark . spacemacs-dark)))
  :hook (after-init . heaven-and-hell-init-hook)
  :bind (("C-c <f6>" . heaven-and-hell-load-default-theme)
	 ("<f6>" . heaven-and-hell-toggle-theme)))

(use-package all-the-icons
  :straight t
  :config
  ;; all-the-icons doesn't work without font-lock+
  ;; And font-lock+ doesn't heave autoloads
  (use-package font-lock+
    :straight (:host github :repo "emacsmirror/font-lock-plus")
    :config (require 'font-lock+)))
(use-package emojify
  :defer t
  :straight t)

;; Make directory mode more nice with a lot of icons describing each file system.
(use-package all-the-icons-dired
  :straight t
  :after all-the-icons
  :hook (dired-mode . all-the-icons-dired-mode))

;; Make very nice font in left bottom of status_line and show the full path of currrent file.
(use-package doom-modeline
  :defer t
  :hook (after-init . doom-modeline-init))
