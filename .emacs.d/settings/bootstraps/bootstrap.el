(setq packagemanager 'straight)

(cond ((eq packagemanager 'straight)
    (load-file "~/.emacs.d/settings/bootstraps/straight.el")
    (message "Package manager is straight!")
	  ))

(cond ((eq packagemanager 'use-package)
    (load-file "~/.emacs.d/settings/bootstraps/use-package.el")
    (message "Package manager is use-package!")
    ))
