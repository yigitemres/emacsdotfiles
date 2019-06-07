(defhydra hydra-avy()
    "avy"

    ("C" avy-goto-char-2 "goto two specific char")
    ("W" avy-goto-word-0 "goto words")
    ("c" avy-goto-char "goto specific char")
    ("j" avy-next "next")
    ("k" avy-prev "prev")
    ("l" avy-goto-line "goto line")
    ("oh" avy-org-goto-heading-timer "goto org heading")
    ("r" avy-resume "resume")
    ("s" avy-isearch "isearch")
    ("w" avy-goto-word-1 "goto word")
    )

(defhydra hydra-buffers()
    "buffers"

    ("<backtab>" previous-buffer "previous")
    ("TAB" next-buffer "next")
    ("b" ivy-switch-buffer "list")
    ("k" kill-buffer "kill")
    ("l" ivy-switch-buffer "list")
    ("i" ibuffer "ibuffer")
    )

(defhydra hydra-counsel()
    "counsel"

    ("a" counsel-ag "ag")
    ("c" counsel-M-x "counsel")
    ("db" counsel-descbinds "describe bindings")
    ("df" counsel-describe-function "describe function")
    ("dv" counsel-describe-variable "describe variable")
    ("ff" counsel-find-file "find file")
    ("fl" counsel-find-library "find library")
    ("grp" counsel-git-grep "git-grep")
    ("gt" counsel-git "git")
    ("h" counsel-minibuffer-history "minibuffer history")
    ("l" counsel-locate "locate")
    ("s" counsel-info-lookup-symbol "lookup symbol")
    ("u" counsel-unicode-char "unicode char")
    )

(defhydra hydra-ivy(:hint nil :color red)
    "
^ ^ ^ ^ ^ ^ | ^Mark^	^ |
^-^-^-^-^-^-+-^-^-^-^-^-^-+-^-^-^-^-^-^-
^ ^ _k_ ^ ^ | _m_ark	^ |
_h_ ^+^ _l_ | _u_nmark  ^ |
^ ^ _j_ ^ ^ | _i_nsert  ^ |
"

    ("h" ivy-beginning-of-buffer)
    ("j" ivy-next-line)
    ("k" ivy-previous-line)
    ("l" ivy-end-of-buffer)

    ("m" ivy-mark)
    ("u" ivy-unmark)
    ("i" nil)
    )

;; region not working. commandp error.
(defhydra hydra-casechangeregion()
    "case change region"

    ("c" capitalize-region "capitalize")
    ("l" downcase-region "lowercase")
    ("u" upcase-region "uppercase")
    )

(defhydra hydra-casechangeword()
    "case change word"

    ("c" capitalize-word "capitalize")
    ("l" downcase-word "lowercase")
    ("u" upcase-word "uppercase")
    )

(defhydra hydra-window()
    "window"

    ("TAB" other-window "other window")
    ("<backtab>" (lambda() (interactive) (other-window -1)) "prev window")
    ("w" ace-window "ace window")
    ("h" split-window-below "split below")
    ("s" ace-swap-window "swap")
    ("v" split-window-right "split right")
    ("mi" ivy-minibuffer-grow "minibuffer inc")
    ("md" ivy-minibuffer-shrink "minibuffer dec")
    ("x" ace-delete-window "delete window")
    ("z" ace-delete-other-windows "delete other windows")
    )

(defhydra hydra-zoom()
    "zoom"

    ("i" text-scale-increase "increase")
    ("d" text-scale-decrease "decrease")
    ("r" (text-scale-set 0) "reset" )
    )
