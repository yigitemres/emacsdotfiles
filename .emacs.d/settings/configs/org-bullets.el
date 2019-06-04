(el-patch-feature org-bullets)
(with-eval-after-load 'org-bullets
    (el-patch-defcustom org-bullets-bullet-list
        '(;;; Large
             "◉"
             "○"
             (el-patch-swap "✸" "")
             (el-patch-swap "✿" "")
             ;; ♥ ● ◇ ✚ ✜ ☯ ◆ ♠ ♣ ♦ ☢ ❀ ◆ ◖ ▶
             ;;; Small
             ;; ► • ★ ▸
             )
        "List of bullets used in Org headings.
        It can contain any number of symbols, which will be repeated."
        :group 'org-bullets
        :type '(repeat (string :tag "Bullet character")))
    )
