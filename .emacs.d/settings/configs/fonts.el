;; Font List
;;;;;;;;;;;;;
;; Iosevka NF
;; Noto Mono
;; FuraCode NF (FiraCode)
;; Source Code Pro
;;;;;;;;;;;;;

(setq
    selectedfont "Iosevka NF"
    fallbackfont "Consolas"
    )

(set-frame-font selectedfont)
(set-fontset-font t nil (font-spec :name fallbackfont))
