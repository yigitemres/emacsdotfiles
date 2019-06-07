(require 'boon-main)
(require 'boon-core)


;; Optional
(require 'boon-arguments)
(require 'boon-moves)
(require 'boon-regs)
(require 'boon-search)
(require 'boon-utils)


(boon-mode)
(load-file "~/.emacs.d/settings/configs/boon-defaults.el")

(define-key boon-command-map "?" '(lambda () (interactive) (which-key-show-keymap 'boon-command-map)))

(define-key boon-command-map "i" 'boon-insert)

(define-key boon-command-map ":" 'counsel-M-x)
(define-key boon-command-map "Cw" 'hydra-casechangeword/body)
(define-key boon-command-map "W" 'hydra-window/body)

(define-key boon-command-map "a" 'hydra-avy/body)
(define-key boon-command-map "b" 'hydra-buffers/body)
(define-key boon-command-map "c" 'hydra-counsel/body)
(define-key boon-command-map "eb" 'eval-buffer)
(define-key boon-command-map "ee" '(lambda () (interactive) (load-file "~/.emacs")))
(define-key boon-command-map "ff" 'counsel-find-file)
(define-key boon-command-map "fg" 'find-file-at-point)
(define-key boon-command-map "fi" 'insert-file)
(define-key boon-command-map "fn" 'find-file-other-window)
(define-key boon-command-map "fr" 'counsel-recentf)
(define-key boon-command-map "fs" 'save-buffer)
(define-key boon-command-map "fw" 'write-region)
(define-key boon-command-map "gW" 'avy-goto-word-0)
(define-key boon-command-map "gl" 'goto-line-preview)
(define-key boon-command-map "gw" 'avy-goto-word-1)
(define-key boon-command-map "lc" 'how-many)
(define-key boon-command-map "lf" 'flush-lines)
(define-key boon-command-map "lg" 'goto-line-preview)
(define-key boon-command-map "lh" 'highlight-lines-matching-regexp)
(define-key boon-command-map "lk" 'keep-lines)
(define-key boon-command-map "lm" 'multi-occur)
(define-key boon-command-map "lo" 'occur)
(define-key boon-command-map "ls" 'sort-lines)
(define-key boon-command-map "oa" 'origami-toggle-all-nodes)
(define-key boon-command-map "oo" 'origami-toggle-node)
(define-key boon-command-map "p" 'projectile-command-map)
(define-key boon-command-map "rq" 'vr/query-replace)
(define-key boon-command-map "rr" 'vr/replace)
(define-key boon-command-map "rs" 'swiper-query-replace)
(define-key boon-command-map "sa" 'swiper-all)
(define-key boon-command-map "sfa" 'counsel-ag)
(define-key boon-command-map "sfd" 'deadgrep)
(define-key boon-command-map "sfr" 'counsel-rg)
(define-key boon-command-map "ss" 'swiper)
(define-key boon-command-map "t" 'treemacs)
(define-key boon-command-map "z" 'hydra-zoom/body)


(define-key boon-command-map "Q" 'save-buffers-kill-terminal)

(which-key-add-key-based-replacements

    ":"		"exec"
    "?"		"help"
    "C"		"case change"
    "Cw"	"case change word"
    "Q"		"exit emacs"
    "W"		"window"
    "Wh"	"hydra-window"
    "Wm"	"minifuffer"
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
    "lc"	"count lines regexp"
    "lf"	"delete lines regexp"
    "lg"	"higlight lines regexp"
    "lg"    "goto line"
    "lk"	"only keep lines regexp"
    "lm"	"multi occur"
    "lo"	"show lines regexp new buffer"
    "ls"    "sort lines"
    "o"     "origami"
    "oa"    "toggle all"
    "oo"    "toggle node"
    "q"		"exit"
    "p"		"projectile"
    "r"     "regexp"
    "rq"    "query"
    "rr"    "regexp"
    "rs"    "swiper query"
    "s"     "search"
    "sa"    "all"
    "sf"	"files"
    "sfa"	"counsel ag"
    "sfd"	"deadgrep"
    "sfr"	"counsel rg"
    "ss"    "swiper"
    "t"     "treemacs"
    "z"     "zoom"

    )
