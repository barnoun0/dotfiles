
(require 'package)
(setq package-archives
      '(("gnu"   . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
;; Refresh package contents if needed
(unless package-archive-contents
  (package-refresh-contents))
(ivy-mode 1)
(counsel-mode 1)
(global-set-key (kbd "C-s") 'swiper)           ;; Search buffer with Ivy
(global-set-key (kbd "M-x") 'counsel-M-x)      ;; Better M-x
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)

;; Org mode

(require 'org)
(setq org-startup-indented t)       ;; nice indentation
(setq org-hide-leading-stars t)
(setq org-startup-folded 'content)  ;; start folded
(setq org-log-done 'time)           ;; add timestamp when tasks are done

;; ---------------------------
;; 5. UI tweaks 
;; ---------------------------
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(global-display-line-numbers-mode 1)
(require 'doom-modeline)
(doom-modeline-mode 1)
(setq ivy-initial-inputs-alist nil)
(setq doom-modeline-icon t)
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-buffer-state-icon t)
(setq doom-modeline-buffer-modification-icon t)
;;spolsky theme

;; doom themes
(use-package doom-themes
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11"
     "9b9d7a851a8e26f294e778e02c8df25c8a3b15170e6f9fd6965ac5f2544ef2a9"
     "268ffd888ba4ffacb351b8860c8c1565b31613ecdd8908675d571855e270a12b"
     "01f347a923dd21661412d4c5a7c7655bf17fb311b57ddbdbd6fce87bd7e58de6"
     "720838034f1dd3b3da66f6bd4d053ee67c93a747b219d1c546c41c4e425daf93"
     "c3c135e69890de6a85ebf791017d458d3deb3954f81dcb7ac8c430e1620bb0f1"
     "f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326"
     "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641"
     "166a2faa9dc5b5b3359f7a31a09127ebf7a7926562710367086fcc8fc72145da"
     "7de64ff2bb2f94d7679a7e9019e23c3bf1a6a04ba54341c36e7cf2d2e56e2bcc"
     "4990532659bb6a285fee01ede3dfa1b1bdf302c5c3c8de9fad9b6bc63a9252f7"
     "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098"
     default))
 '(package-selected-packages
   '(all-the-icons all-the-icons-ivy-rich counsel doom-modeline
		   doom-themes ivy-rich magit org-modern
		   spaceline-all-the-icons spacemacs-theme
		   sublime-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

(use-package ivy-rich
  :ensure t)
(ivy-rich-mode 1)
