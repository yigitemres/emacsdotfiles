(declare-function nyan-create 'nyan)

(doom-modeline-def-segment nyan
    (when (and (bound-and-true-p nyan-mode)
              (doom-modeline--active))
        (concat (doom-modeline-spc)
            (doom-modeline-spc)
            (nyan-create)
            (doom-modeline-spc))))



(doom-modeline-def-modeline 'myline
    '(parrot nyan selection-info bar matches buffer-info remote-host buffer-position)
    '(misc-info input-method buffer-encoding minor-modes major-mode process vcs checker)
)

(defun setup-custom-doom-modeline ()
  (doom-modeline-set-modeline 'myline 'default))

(add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline)
