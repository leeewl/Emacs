;-----------;
;;; shell ;;;
;-----------;

(defun change-shell-mode-coding()
  (interactive)
  (progn
    (set-terminal-coding-system 'gbk)
    (set-keyboard-coding-system 'gbk)
    (set-selection-coding-system 'gbk)
    (set-buffer-file-coding-system 'gbk)
    (set-file-name-coding-system 'gbk)
    (modify-coding-system-alist 'process "*" 'gbk)
    (set-buffer-process-coding-system 'gbk 'gbk)))
(add-hook 'shell-mode-hook 'change-shell-mode-coding)

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


(provide 'shell-settings)

