;; path where setting files are kept
(add-to-list 'load-path' "~/Emacs/.emacs.d/settings")

;; define various custom functions
(require 'custom-functions)

;; install dependencies with packages
(require 'packages-settings)

;; configure general settings
(require 'general-settings)

;; general key settings
(require 'key-settings)

;---------------;
;;; Utilities ;;;
;---------------;

;; theme monokai
(require 'monokai-settings)

;; helm-ag
(require 'helm-ag-settings)

;; smart-tab
;;(require 'smart-tab-settings)

;; company
(require 'company-settings)

;; Yasnippet
;;(require 'yasnippet-settings)

;; ggtags
(require 'ggtags-settings)

;-----------;
;;; Modes ;;;
;-----------;

;; PHP mode
(require 'php-settings)

;; company php mode
(require 'company-php-settings)

;; ac-php
(require 'ac-php-settings)

;; Nyancat mode
(require 'nyan-settings)

;-----------;
;;; other ;;;
;-----------;
;; (require 'shell-settings)

;---------------------------------------

;; Put auto 'custom' changes in a separate file (this is stuff like custom-set-faces and custom-set-variables)

(load
	(setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
	'noerror)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)

