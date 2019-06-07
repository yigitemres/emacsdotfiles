(global-hl-todo-mode t)
(setq todovarsfaces
    '(
         ("CONFIG" . "#cc9393")
         ("DONE" . "#00ff00")
         ("FIX" . "#00ff00")
         ("IMPORTANT" . "#ff0000")
         ("DONT" . "#5f7f5f")
         ("FAIL" . "#ff0000")
         ("FIXME" . "#cc9393")
         ("HOLD" . "#d0bf8f")
         ("INSTALL" . "#cc9393")
         ("NEXT" . "#dca3a3")
         ("NOTE" . "#d0bf8f")
         ("OKAY" . "#7cb8bb")
         ("PROG" . "#7cb8bb")
         ("TEMP" . "#d0bf8f")
         ("TODO" . "#00ff00")

         ("\\?\\?\\?+" . "#cc9393"))
    )

(setq hl-todo-keyword-faces todovarsfaces)
