(load-file "~/.emacs.d/init.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
;; emacs in windows  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;default '.emacs' file in the path 'C:\Users\%(UserName)\AppData\Roaming'
;;(setenv "HOME" "F:/Users/ChenMQ/emacs-24.4")  
;;(setenv "PATH" "F:/Users/ChenMQ/emacs-24.4") 
;;(load-file "F:/Users/ChenMQ/emacs-24.4/.emacs.d/init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
