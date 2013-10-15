;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

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
