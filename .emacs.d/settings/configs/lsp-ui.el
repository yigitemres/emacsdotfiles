(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(add-hook 'lsp-mode-hook 'flycheck-mode)
;;(add-hook 'lsp-mode-hook 'company-mode) ;; company is so slow

(setq
    lsp-ui-doc-enable nil
    lsp-ui-peek-enable nil
    lsp-ui-sideline-enable nil
    lsp-ui-imenu-enable nil
    lsp-ui-flycheck-enable t
    )
