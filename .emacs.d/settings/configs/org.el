;; Taken from https://blobsg.jft.rocks/emacs/unicode-for-orgmode-checkboxes.html

(require 'org-protocol)
(require 'org-capture)

(add-to-list 'load-path "~/.emacs.d/orgprotocol")

(setq org-default-notes-file "~/.emacs.d/org/notes.org")
(setq org-protocol-default-template-key "l")
(setq org-capture-templates
    (quote
        (
            ("t" "TODO" entry (file+headline "~/.emacs.d/org/notes.org"  "TODO")
                "* TODO %?\n  %a")
            ("f" "FIX" entry (file+headline "~/.emacs.d/org/notes.org" "FIX")
                "* FIX %?\n  %a")
            ("l" "LINKS" entry (file+headline "~/.emacs.d/org/notes.org" "LINKS")
                "* LINKS %?\n  %:initial\n  Source: %:annotation\n")
         )))


(add-hook 'org-mode-hook 'org-bullets-mode)

(add-hook 'org-mode-hook (lambda ()
  "Beautify Org Checkbox Symbol"
  (push '("[ ]" . "") prettify-symbols-alist)
  (push '("[v]" . "" ) prettify-symbols-alist)
  (push '("[x]" . "" ) prettify-symbols-alist)
  (prettify-symbols-mode)))

(defface org-checkbox-done-text
  '((t (:foreground "#71696A" :strike-through t)))
  "Face for the text part of a checked org-mode checkbox.")

(font-lock-add-keywords
 'org-mode
 `(("^[ \t]*\\(?:[-+*]\\|[0-9]+[).]\\)[ \t]+\\(\\(?:\\[@\\(?:start:\\)?[0-9]+\\][ \t]*\\)?\\[\\(?:x\\|\\([0-9]+\\)/\\2\\)\\][^\n]*\n\\)"
    1 'org-checkbox-done-text prepend))
 'append)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setq org-todo-keywords
        '((type "CONFIG(cfg)" "FIX(fx)" "IMPORTANT(imp)" "DONT(dnt)" "FAIL(fl)" "FIXME(fx)" "HOLD(hld)" "INSTALL(ins)" "NEXT(nxt)" "NOTE(nt)" "OKAY(ok)" "PROG(prg)" "TEMP(tmp)" "TODO(td)" "|" "DONE(dn)")))
