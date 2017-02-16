
;;------------  melpa Package ------------------

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(package-initialize)

;;----------------------------------------------

;;------------smart-compile----------------------

(add-to-list 'load-path "~/.emacs.d/elpa")
(add-to-list 'load-path "~/.emacs.d/elpa/smart-compile")
(autoload
  'smart-compile
  "smart-compile"
  "Emacs smart compile"
  t)
(require 'smart-compile)

(defun du-onekey-compile ()
  "Save buffers and start compile"
  (interactive)
  (save-some-buffers t)
  (switch-to-buffer-other-window "*compilation*")
  (compile compile-command))

;;F5 smart-compile
(global-set-key [f5] 'smart-compile)

;;F6: 调用gdb
(global-set-key [f6] 'gdb)

;;-----------------------------------------------


;;--------------- auto-complete -----------------

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20160310.2248")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20160310.2248/dict")
(ac-config-default)

;;括号匹配
(electric-pair-mode t)

;;yasnippets
(yas-global-mode 1)

;;-----------------------------------------------

;;------------------ 显示设置 --------------------

;;显示行号
(global-linum-mode t) 

;;配色方案设置
;;(load-theme 'zenburn t)
(load-theme 'solarized-dark t)

;;标题设置
(setq frame-title-format "emacs@%b")

;;设定不产生备份文件
(setq make-backup-files nil)

;; 'C-k' 同时删除该行
(setq-default kill-whole-line t)

;;-----------------------------------------------


;;-------------- org-mode 自动换行----------------
(defun my-org-mode ()
(setq truncate-lines nil)
)
(add-hook 'org-mode-hook' my-org-mode)



;;-----------------------------------------------

