(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))


(setq dashboard-items '(
                           (recents  . 19)
                           (bookmarks . 19)
                           (projects . 19)
                           (agenda . 19)
                           (registers . 19)
                           ))


(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
(setq dashboard-startup-banner 'official)

(setq dashboard-center-content nil)
(setq dashboard-show-shortcuts t)

(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)



(setq dashboard-set-navigator t)
(setq dashboard-set-init-info t)
(setq dashboard-init-info "")
(setq dashboard-set-footer nil)

;;(add-to-list 'dashboard-items '(agenda) t)
;;(setq show-week-agenda-p t)
