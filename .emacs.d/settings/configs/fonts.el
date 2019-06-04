;; Font List
;;;;;;;;;;;;;
;; Iosevka NF
;; Noto Mono
;; FuraCode NF (FiraCode)
;; Source Code Pro
;; DejaVuSansMono NF
;;;;;;;;;;;;;

(setq
    selectedfont "Iosevka NF-9"
;;    selectedfont "FuraCode NF-9"
    fallbackfont "Consolas"
    )

(set-frame-font selectedfont)
(set-fontset-font t nil (font-spec :name fallbackfont))
