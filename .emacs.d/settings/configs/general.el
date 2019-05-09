(general-evil-setup)
(defconst myleader "C-ç")
(defvar my-leader-map (make-sparse-keymap))

(general-define-key
    :prefix myleader
    :prefix-map 'my-leader-map

    "x" '(counsel-M-x :which-key "exec")

    "C" '(:which-key "case change")
    "Cw" '(hydra-casechangeword/body :which-key "word")
    "Cr" '(:which-key "region")
    "Crc" '(capitalize-region :which-key "capitalize")
    "Crl" '(downcase-region :which-key "lowercase")
    "Cru" '(upcase-region :which-key "uppercase")
    "W" '(hydra-window/body :which-key "window")

    "a" '(hydra-avy/body :which-key "avy")
    "b" '(hydra-buffers/body :which-key "buffers")
    "c" '(hydra-counsel/body :which-key "counsel")
    "e" '(:which-key "evals")
    "eb" '(eval-buffer :which-key "load curent buffer")
    "ee" '((lambda () (interactive) (load-file "~/.emacs")) :which-key "reload emacs")
    "f" '(:which-key "files")
    "ff" '(counsel-find-file :which-key "find file")
    "fg" '(find-file-at-point :which-key "go file")
    "fi" '(insert-file :which-key "insert file")
    "fn" '(find-file-other-window :which-key "find file new window")
    "fr" '(counsel-recentf :which-key "recent files")
    "fs" '(save-buffer :which-key "save-file")
    "fw" '(write-region :which-key "write region")
    "g" '(:which-key "go")
    "gW" '(avy-goto-word-0 :which-key "words")
    "gl" '(goto-line-preview :which-key "line")
    "gw" '(avy-goto-word-1 :which-key "(w)ords")
    "l" '(:which-key "lines")
    "lg" '(goto-line-preview :which-key "goto line number")
    "ls" '(sort-lines :which-key "sort lines")
    "r" '(:which-key "regexp")
    "rq" '(vr/query-replace :which-key "query replace")
    "rr" '(vr/replace :which-key "replace")
    "rs" '(swiper-query-replace :which-key "swiper replace")
    "s" '(:which-key "swiper")
    "sa" '(swiper-all :which-key "swiper all")
    "ss" '(swiper :which-key "swiper")
    "t" '(treemacs :which-key "treemacs")
    "z" '(hydra-zoom/body :which-key "zoom")
 )




;;(define-key modalka-mode-map (kbd "?") #'(lambda () (interactive) (which-key-show-keymap 'modalka-mode-map)))
;;
;;(define-key modalka-mode-map (kbd ":") #'counsel-M-x)
;;(define-key modalka-mode-map (kbd "Cw")  #'hydra-casechangeword/body)
;;(define-key modalka-mode-map (kbd "W") #'hydra-window/body)
;;
;;(define-key modalka-mode-map (kbd "a") #'hydra-avy/body)
;;(define-key modalka-mode-map (kbd "b") #'hydra-buffers/body)
;;(define-key modalka-mode-map (kbd "c") #'hydra-counsel/body)
;;(define-key modalka-mode-map (kbd "eb") #'eval-buffer)
;;(define-key modalka-mode-map (kbd "ee") #'(lambda () (interactive) (load-file "~/.emacs")))
;;(define-key modalka-mode-map (kbd "ff") #'counsel-find-file)
;;(define-key modalka-mode-map (kbd "fg") #'find-file-at-point)
;;(define-key modalka-mode-map (kbd "fi") #'insert-file)
;;(define-key modalka-mode-map (kbd "fn") #'find-file-other-window)
;;(define-key modalka-mode-map (kbd "fr") #'counsel-recentf)
;;(define-key modalka-mode-map (kbd "fs") #'save-buffer)
;;(define-key modalka-mode-map (kbd "fw") #'write-region)
;;(define-key modalka-mode-map (kbd "gW") #'avy-goto-word-0)
;;(define-key modalka-mode-map (kbd "gl") #'goto-line-preview)
;;(define-key modalka-mode-map (kbd "gw") #'avy-goto-word-1)
;;(define-key modalka-mode-map (kbd "lg") #'goto-line-preview)
;;(define-key modalka-mode-map (kbd "ls") #'sort-lines)
;;(define-key modalka-mode-map (kbd "oa") #'origami-toggle-all-nodes)
;;(define-key modalka-mode-map (kbd "oo") #'origami-toggle-node)
;;(define-key modalka-mode-map (kbd "rq") #'vr/query-replace)
;;(define-key modalka-mode-map (kbd "rr") #'vr/replace)
;;(define-key modalka-mode-map (kbd "rs") #'swiper-query-replace)
;;(define-key modalka-mode-map (kbd "sa") #'swiper-all)
;;(define-key modalka-mode-map (kbd "ss") #'swiper)
;;(define-key modalka-mode-map (kbd "t") #'treemacs)
;;(define-key modalka-mode-map (kbd "z") #'hydra-zoom/body)
;;(define-key modalka-mode-map (kbd "Q") #'save-buffers-kill-terminal)
;;
;;(which-key-add-key-based-replacements
;;
;;    ":"		"exec"
;;    "?"		"help"
;;    "C"		"case change"
;;    "Cw"	"case change word"
;;    "Q"		"exit emacs"
;;    "W"		"window"
;;    "a"		"avy"
;;    "b"		"buffers"
;;    "c"		"counsel"
;;    "e"		"evals"
;;    "eb"    "eval buffer"
;;    "ee"    "reload emacs"
;;    "f"     "file"
;;    "ff"    "open file"
;;    "fg"    "goto file"
;;    "fi"    "insert file"
;;    "fn"    "open file in new window"
;;    "fr"    "recent files"
;;    "fs"    "save file"
;;    "fw"    "write region into file"
;;    "g"     "go"
;;    "gW"    "goto word"
;;    "gl"    "goto line"
;;    "gw"    "goto (w)ords"
;;    "l"     "lines"
;;    "lg"    "goto line"
;;    "ls"    "sort lines"
;;    "o"     "origami"
;;    "oa"    "toggle all"
;;    "oo"    "toggle node"
;;    "q"		"exit"
;;    "r"     "regexp"
;;    "rq"    "query"
;;    "rr"    "regexp"
;;    "rs"    "swiper query"
;;    "s"     "swiper"
;;    "sa"    "all"
;;    "ss"    "swiper"
;;    "t"     "treemacs"
;;    "z"     "zoom"
;;    )
;;
