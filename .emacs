;;M-$
(setq-default ispell-program-name "aspell")

;;C-c @ C-h
;;C-c @ C-sS
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;;Flymake
(add-hook 'find-file-hook 'flymake-find-file-hook)
(global-set-key (kbd"C-c C-v") 'flymake-display-err-menu-for-current-line)
(global-set-key [f4] 'flymake-goto-next-error)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((((class color)) (:underline "red"))))
 '(flymake-warnline ((((class color)) (:underline "yellow")))))


;;Webjumps to doc
(require 'webjump)
(global-set-key "\C-cj" 'webjump)
(setq webjump-sites
      (append '(
		("mpi_doc" . "www.mpich.org/static/docs/latest/www3/")
		)
	      webjump-sample-sites))

;;MPI keyword
;; (font-lock-add-keywords 'c-mode
;; 			'(("\\bMPI_\\w*\\b" . font-lock-function-face)))


;;Pour les circonflexes
(load-library "iso-transl")

(add-to-list 'load-path "~/.emacs.d/lisp/")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cyberpunk)
(load-theme 'afternoon)


;; cd ~/.emacs.d/plugins
;; git clone --recursive https://github.com/capitaomorte/yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;Indentation c
(setq-default c-basic-offset 4)

;;Alias pour les choix
(defalias 'yes-or-no-p 'y-or-n-p)

;; Affiche la parenthese correspondante
(show-paren-mode)

;; Mode par defaut pour edition de texte qui indente les lignes.
(setq default-major-mode 'indented-text-mode)

;; desactive message de depart
(setq inhibit-startup-message t)

;; Affiche le numero de ligne et de colonne
(setq line-number-mode t)
(line-number-mode t)
(column-number-mode t)

;; Active la coloration syntaxique
(global-font-lock-mode t)

;;Supprime fichiers backup
(setq make-backup-files nil)

;; Surline la ligne du curseur
;;(global-hl-line-mode 1)

;;Raccourcis clavier
(global-set-key [(meta g)] 'goto-line)
(global-set-key [f9] 'compile)
(global-set-key [f10] 'load-file)

;; Better C-x o
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; aggresive-indent
;; M-x package-install RET aggressive-indent
(require 'aggressive-indent)
(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("38d25871e95642ee1a13013bdb988e8c8fcb4ced3832d3e927c7296a0cdf5f59" default))))

