(defvar bootstrap-version)
(let ((bootstrap-file
          (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
         (bootstrap-version 5))
    (unless (file-exists-p bootstrap-file)
        (with-current-buffer
            (url-retrieve-synchronously
                "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
                'silent 'inhibit-cookies)
            (goto-char (point-max))
            (eval-print-last-sexp)))
    (load bootstrap-file nil 'nomessage))


;; Straight-Configs
;;(setq straight-use-symlinks t)
(setq straight-check-for-modifications '(check-on-save))

(straight-use-package 'git)

(defun org-git-version ()
    (require 'git)
    "The Git version of org-mode.
Inserted by installing org-mode or when a release is made."
    (let ((git-repo (expand-file-name
                        "straight/repos/org/" user-emacs-directory)))
        (string-trim
            (git-run "describe"
                "--match=release\*"
                "--abbrev=6"
                "HEAD"))))
(defun org-release ()
    (require 'git)
    "The release version of org-mode.
Inserted by installing org-mode or when a release is made."
    (let ((git-repo (expand-file-name
                        "straight/repos/org/" user-emacs-directory)))
        (string-trim
            (string-remove-prefix
                "release_"
                (git-run "describe"
                    "--match=release\*"
                    "--abbrev=0"
                    "HEAD")))))

(provide 'org-version)

;; This line prevent both  org build while org+contrib exist!
(straight-use-package '(org :local-repo nil))

;; Use-Package
(straight-use-package 'use-package)

(use-package el-patch :straight t :config (load-file "~/.emacs.d/settings/configs/el-patch.el"))
