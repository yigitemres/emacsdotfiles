;;; dotEmacs --- Summary
;;; Commentary:
;;; TODO: Add vermiculus/magithub config.
;;; TODO: Add alphapapa/magit-todos config.
;;; TODO: Add multiple-cursors config.
;;; TODO: Add hyperbole's zoom-frm package.
;;; Code:


;; use
;; "emacs -Q -l ~\.emacs.d\settings\profiler\profile-dotemacs.el -f profile-dotemacs"
;; to the start the profile-dotemacs!

;;(setq debug-on-error t)

(setq warning-minimum-level :emergency)

(setq custom-file "~/.emacs.d/custom.el")

;; Emacs Related Configs
(load-file "~/.emacs.d/settings/configs/emacs.el")
(load-file "~/.emacs.d/settings/configs/fonts.el")
(load-file "~/.emacs.d/settings/bootstraps/bootstrap.el")


;;(use-package hyperbole :straight t :no-require t)

;; Packages
(use-package ace-popup-menu :straight t :no-require t)
(use-package ace-window :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/ace-window.el"))
(use-package aggressive-indent :straight t :no-require t)
(use-package amx :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/amx.el"))
(use-package avy :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/avy.el"))
(use-package beacon :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/beacon.el"))
(use-package boon :straight t :no-require t :after which-key :config (load-file "~/.emacs.d/settings/configs/boon.el"))
(use-package circe :straight t :no-require t)
(use-package command-log-mode :straight t :no-require t)
(use-package company :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/company.el"))
(use-package company-lsp :straight :no-require t :after lsp-mode company :config (load-file "~/.emacs.d/settings/configs/company-lsp.el"))
(use-package counsel :straight t :no-require t)
(use-package crux :straight t :no-require t)
(use-package ctags :straight t :no-require t)
(use-package dap-mode :straight t :no-require t)
(use-package dashboard :straight t :no-require t)
(use-package deadgrep :straight t :no-require t)
(use-package delight :straight t :no-require t)
(use-package dimmer :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/dimmer.el"))
(use-package dired-hacks :disabled :straight t :no-require t)
(use-package doom-modeline :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/doom-modeline.el"))
(use-package eaf :straight (emacs-application-framework :host github :repo "manateelazycat/emacs-application-framework") :no-require t)
(use-package editorconfig :straight t :config (load-file "~/.emacs.d/settings/configs/editorconfig.el"))
(use-package elfeed :straight t :no-require t)
(use-package elfeed-goodies :straight t :no-require t)
(use-package elfeed-org :straight t :no-require t)
(use-package elpy :straight t :no-require t)
(use-package emacs-howdoi :straight (emacs-howdoi :host github :repo "atykhonov/emacs-howdoi") :no-require t)
(use-package emojify :straight t :no-require t)
(use-package esup :straight t :no-require t)
(use-package expand-region :straight t :no-require t)
(use-package flycheck :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/flycheck.el"))
(use-package flymake :disabled :straight t :no-require t)
(use-package focus :straight t :no-require t)
(use-package forge :straight t :no-require t :requires magit :after magit)
(use-package general :disabled :straight t :no-require t :after which-key :config (load-file "~/.emacs.d/settings/configs/general.el"))
(use-package ggtags :straight t :no-require t)
(use-package goto-line-preview :straight t :no-require t)
(use-package gtags :straight t :no-require t)
(use-package helm :disabled :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/helm.el"))
(use-package hl-todo :straight t :no-require t)
(use-package hydra :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/hydra.el"))
(use-package ivy :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/ivy.el"))
(use-package ivy-posframe :straight t :no-require t :requires ivy :after ivy)
(use-package latex-preview-pane :disabled :straight t :no-require t)
(use-package linum-relative :disabled :straight t :config (load-file "~/.emacs.d/settings/configs/linum-relative.el"))
(use-package lsp-mode :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/lsp-mode.el"))
(use-package lsp-ui :straight t :no-require t :after lsp-mode :config (load-file "~/.emacs.d/settings/configs/lsp-ui.el"))
(use-package magit :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/magit.el"))
(use-package magit-todos :straight t :no-require t)
(use-package magithub :disabled :straight t :no-require t)
(use-package modalka :disabled :straight t :no-require t :after which-key :config (load-file "~/.emacs.d/settings/configs/modalka.el"))
(use-package mu4e :straight t :no-require t)
(use-package mu4e-overview :straight t :no-require t)
(use-package multiple-cursors :straight t :no-require t)
(use-package org-brain :straight t :no-require t)
(use-package org-bullets :straight t :no-require t)
(use-package org-cliplink :straight t :no-require t)
(use-package org-download :straight t :no-require t)
(use-package org-ioslide :straight (ox-ioslide) :no-require t)
(use-package org-page :straight t :no-require t)
(use-package org-plus-contrib :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/org.el"))
(use-package org-timeline :straight t :no-require t)
(use-package org-toc :straight (toc-org) :no-require t)
(use-package origami :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/origami.el"))
(use-package pdf-tools :straight t :no-require t)
(use-package powerline :disabled :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/powerline.el"))
(use-package pretty-mode :straight t :no-require t)
(use-package prodigy :straight t :no-require t)
(use-package projectile :straight t :no-require t)
(use-package ripgrep :straight t :no-require t)
(use-package smart-mode-line :disabled :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/smart-mode-line.el"))
(use-package smartparens :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/smartparens.el"))
(use-package ssh-agency :straight t :no-require t)
(use-package swiper :straight t :no-require t)
(use-package swiper-helm :disabled :straight t :no-require t :requires helm)
(use-package sx :straight t :no-require t)
(use-package treemacs :straight t :no-require t)
(use-package undo-tree :straight t :no-require t)
(use-package visual-regexp :straight t :no-require t)
(use-package which-key :straight t  :config (load-file "~/.emacs.d/settings/configs/which-key.el"))
(use-package wttrin :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/wttrin.el"))
(use-package yasnippet :straight t :no-require t :config (load-file "~/.emacs.d/settings/configs/yasnippet.el"))
(use-package yasnippet-snippets :disabled :straight t :no-require t)
(use-package zoom :straight t :config (load-file "~/.emacs.d/settings/configs/zoom.el"))

;; Not Working
;;(use-package auctex :straight t :no-require t)

;; Load last in order to blackout.
(use-package blackout :straight (blackout :host github :repo "raxod502/blackout") :no-require t :config (load-file "~/.emacs.d/settings/configs/blackout.el"))

;; Themes
(use-package doom-themes :straight t :no-require t :config (load-theme 'doom-dracula t))

(load-file custom-file)