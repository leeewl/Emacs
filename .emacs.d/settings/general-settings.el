;--------------------------------;
;;; General or Global Settings ;;;
;--------------------------------;

(if (system-is-windows)
    (progn
        ;; Setting English Font
        (set-face-attribute
            'default nil :font "Consolas 14")
        ;; setting Chinese Font
        (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font)
            charset
                (font-spec :family "Microsoft Yahei" :size 16)))))

;; 设置编码utf-8
(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)

;; theme
;;(load-theme 'misterioso t)

;; fullscreen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; show parent
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; highlight line
(global-hl-line-mode 1)

;; show line number
(global-linum-mode t)

;; don't show the startup screen
(setq inhibit-startup-screen 1)

;; set cursor type
(setq-default cursor-type 'bar)

;;disable backup file
(setq mode-backup-file nil)

;; disable backup file
(setq make-backup-files nil)

;;add delete selection mode
(delete-selection-mode t)

;; don't show the menu bar
;;(menu-bar-mode 0)

;; don't show the tool bar
(require 'tool-bar)
(tool-bar-mode 0)

;; don't show the scroll bar
(scroll-bar-mode 0)

;; auto Brace completion, include () [] "" {} not '
(electric-pair-mode t)

;; show the current line and column numbers in the stats bar as well
(line-number-mode 1)
(column-number-mode 1)

(provide 'general-settings)

