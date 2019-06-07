(setq
    user-full-name "Yigit Emre Sahinoglu"
    user-mail-address "yigitemres@gmail.com"
    )

(setq default-frame-alist '((font . "FuraCode NF-9")))

(if (eq system-type 'windows-nt)
;;	(define-coding-system-alias 'cp65001-dos 'utf-8-dos)
    (prefer-coding-system 'utf-8-dos)
    (set-default-coding-systems 'utf-8-dos)
    (set-keyboard-coding-system 'utf-8-dos)
    (set-terminal-coding-system 'utf-8-dos)

    (setq
        coding-system-for-read 'utf-8-dos
        coding-system-for-write 'utf-8-dos))


(setq default-directory "~/")
(setq inhibit-startup-screen t)
;;(setq inhibit-startup-message t)

(setq frame-title-format
    '((:eval (if
                 (buffer-file-name)
                 (abbreviate-file-name (buffer-file-name))
                 "%b")
          )))

(setq
    scroll-margin 0
    scroll-conservatively 100000
    scroll-preserve-screen-position 1
    )

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(setq
    column-number-mode t
    line-number-mode t
    size-indication-mode 'nil
    )

(setq display-time-format "%F %R")
(display-time-mode)

(setq auto-window-vscroll nil)

(global-hl-line-mode t)
;;(electric-pair-mode t)			;; Auto add paranthesis
(show-paren-mode t)             ;; Show other pair of parenthesis
(savehist-mode t)               ;; Save position of cursor
(global-auto-revert-mode t)		;; Reload file
(global-visual-line-mode t)		;; Line wrapper

(setq
    mode-require-final-newline t
    require-final-newline t
    )

(setq confirm-kill-emacs #'y-or-n-p)

(add-hook 'text-mode-hook 'auto-fill-mode)
(setq-default fill-column 80)


(setq
    backup-by-copying t
    backup-directory-alist '(("." . "~/.emacs.d/backups"))
    )

(add-hook 'before-save-hook 'whitespace-cleanup)

(setq
    delete-old-versions t
    kept-new-versions 2
    kept-old-versions 2
    version-control t
    )
