(modalka-mode t)

(global-set-key (kbd "<escape>") #'modalka-mode)
(add-to-list 'modalka-excluded-modes 'magit-status-mode)

(setq-default cursor-type '(bar . 1))
(setq modalka-cursor-type 'box)

(define-key modalka-mode-map (kbd "?") #'(lambda () (interactive) (which-key-show-keymap 'modalka-mode-map)))

(define-key modalka-mode-map (kbd ":") #'counsel-M-x)
(define-key modalka-mode-map (kbd "Cw")  #'hydra-casechangeword/body)
(define-key modalka-mode-map (kbd "W") #'hydra-window/body)

(define-key modalka-mode-map (kbd "a") #'hydra-avy/body)
(define-key modalka-mode-map (kbd "b") #'hydra-buffers/body)
(define-key modalka-mode-map (kbd "c") #'hydra-counsel/body)
(define-key modalka-mode-map (kbd "eb") #'eval-buffer)
(define-key modalka-mode-map (kbd "ee") #'(lambda () (interactive) (load-file "~/.emacs")))
(define-key modalka-mode-map (kbd "ff") #'counsel-find-file)
(define-key modalka-mode-map (kbd "fg") #'find-file-at-point)
(define-key modalka-mode-map (kbd "fi") #'insert-file)
(define-key modalka-mode-map (kbd "fn") #'find-file-other-window)
(define-key modalka-mode-map (kbd "fr") #'counsel-recentf)
(define-key modalka-mode-map (kbd "fs") #'save-buffer)
(define-key modalka-mode-map (kbd "fw") #'write-region)
(define-key modalka-mode-map (kbd "gW") #'avy-goto-word-0)
(define-key modalka-mode-map (kbd "gl") #'goto-line-preview)
(define-key modalka-mode-map (kbd "gw") #'avy-goto-word-1)
(define-key modalka-mode-map (kbd "lg") #'goto-line-preview)
(define-key modalka-mode-map (kbd "ls") #'sort-lines)
(define-key modalka-mode-map (kbd "oa") #'origami-toggle-all-nodes)
(define-key modalka-mode-map (kbd "oo") #'origami-toggle-node)
(define-key modalka-mode-map (kbd "rq") #'vr/query-replace)
(define-key modalka-mode-map (kbd "rr") #'vr/replace)
(define-key modalka-mode-map (kbd "rs") #'swiper-query-replace)
(define-key modalka-mode-map (kbd "sa") #'swiper-all)
(define-key modalka-mode-map (kbd "ss") #'swiper)
(define-key modalka-mode-map (kbd "t") #'treemacs)
(define-key modalka-mode-map (kbd "z") #'hydra-zoom/body)
(define-key modalka-mode-map (kbd "Q") #'save-buffers-kill-terminal)

(which-key-add-key-based-replacements

    ":"		"exec"
    "?"		"help"
    "C"		"case change"
    "Cw"	"case change word"
    "Q"		"exit emacs"
    "W"		"window"
    "a"		"avy"
    "b"		"buffers"
    "c"		"counsel"
    "e"		"evals"
    "eb"    "eval buffer"
    "ee"    "reload emacs"
    "f"     "file"
    "ff"    "open file"
    "fg"    "goto file"
    "fi"    "insert file"
    "fn"    "open file in new window"
    "fr"    "recent files"
    "fs"    "save file"
    "fw"    "write region into file"
    "g"     "go"
    "gW"    "goto word"
    "gl"    "goto line"
    "gw"    "goto (w)ords"
    "l"     "lines"
    "lg"    "goto line"
    "ls"    "sort lines"
    "o"     "origami"
    "oa"    "toggle all"
    "oo"    "toggle node"
    "q"		"exit"
    "r"     "regexp"
    "rq"    "query"
    "rr"    "regexp"
    "rs"    "swiper query"
    "s"     "swiper"
    "sa"    "all"
    "ss"    "swiper"
    "t"     "treemacs"
    "z"     "zoom"
    )
