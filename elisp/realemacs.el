;; this is the real .emacs

;; add all the subdirs of ~/.elisp to load path
(let ((default-directory "~/.elisp/"))
  (normal-top-level-add-subdirs-to-load-path))
  
(global-font-lock-mode 1) ; syntax highlighting
(ido-mode)

(setq backup-directory-alist `(("." . "~/.emacs_saves"))) ;; put backups in specific dir

(require 'color-theme)
(color-theme-initialize)
(color-theme-arjen)

;; evil config
(require 'evil)

(setq evil-default-state 'normal) ; as close as vim as possible
;;; esc quits everything, everywhere

(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

(define-key evil-normal-state-map "gb" 'ido-switch-buffer)
(define-key evil-normal-state-map "gf" 'ido-find-file)
(evil-mode 1)

;; various requires
(require 'cparen)
(cparen-activate)

(require 'magit)

(require 'smart-tab)
(global-smart-tab-mode 1)



(add-hook 'emacs-startup-hook (lambda ()
                                (message "Time needed to load: %s seconds."
					 (emacs-uptime "%s"))) 'append)
