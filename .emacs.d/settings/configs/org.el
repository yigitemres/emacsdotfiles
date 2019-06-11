;; TODO: Fox-Protocol

(require 'org-protocol)
(require 'org-capture)


(add-to-list 'org-protocol-protocol-alist
    '("fox-protocol"
         :protocol "fox-protocol"
         :function fox-protocol-func))

(defun fox-protocol-func (info)
    )

;;Org-Protocol

;; https://orgmode.org/manual/capture-protocol.html



(setq org-default-notes-file "~/.emacs.d/org/notes.org")

(setq org-protocol-default-template-key "l")

(setq org-capture-templates
    (quote
        (
            ("t" "TODO" entry (file+headline "~/.emacs.d/org/todo.org"  "TODO")
                "* TODO %?\n  %a")
            ("f" "FIX" entry (file+headline "~/.emacs.d/org/fix.org" "FIX")
                "* FIX %?\n  %a")
            ("l" "LINKS" entry (file+headline "~/.emacs.d/org/links.org" "LINKS")
                "* LINKS %:annotation %?\n  %:initial\n ")
            )))


;; Bullets Mode


;; Taken from https://blobsg.jft.rocks/emacs/unicode-for-orgmode-checkboxes.html

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


;; Highlight-TD


;; Add keywords ~/.emacs.d/settings/configs/hl-todo.el

(setq org-todo-keywords
    '((type
          "CONFIG"
          "DONT"
          "FAIL"
          "FIX"
          "FIXME"
          "HOLD"
          "IMPORTANT"
          "INSTALL"
          "LINKS"
          "NEXT"
          "NOTE"
          "OKAY"
          "PROG"
          "TEMP"
          "TODO"
          "|" "DONE")))
