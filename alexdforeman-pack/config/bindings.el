;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)
;;; This is the binary name of my scheme implementation.
(setq scheme-program-name "scm")

;;; Ensure Makefile(s) have the correct tabs when needed.
(defun my-tabs-makefile-hook ()
  (setq indent-tabs-mode t))
(add-hook 'makefile-mode-hook 'my-tabs-makefile-hook)
