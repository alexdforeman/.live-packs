;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;;; marmalade
(require 'package)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
               '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Load bindings config
(live-load-config-file "bindings.el")

;; Load cuda mode config: http://www.emacswiki.org/emacs/CudaMode
(live-load-config-file "cuda_mode.el")

(live-load-config-file "twittering-mode.el")

(live-load-config-file "setup.el")

;;; Twitter Setup 'M-x twit'
(require 'twittering-mode)
(setq twittering-use-master-password t)
(setq twittering-icon-mode t)
(setq twittering-timer-interval 60)
(twittering-icon-mode)

;;; Groovy Mode
(live-load-config-file "grails-mode.el")
(live-load-config-file "groovy-mode.el")
(live-load-config-file "groovy-electric.el")
(live-load-config-file "inf-groovy.el")

;;; turn on syntax highlighting
(global-font-lock-mode 1)

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;;; make Groovy mode electric by default.
(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
                          (groovy-electric-mode)))

;;; X version of emacs tab completion does not work.
;;; this is the fix from: http://stackoverflow.com/questions/18278310/emacs-ansi-term-not-tab-completing
(add-hook 'term-mode-hook (lambda()
        (setq yas-dont-activate t)))
