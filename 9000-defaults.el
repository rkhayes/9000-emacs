;; \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;; GNU Emacs / 9000
;; Copyright (C) 2026 - Erik Hayes
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.
;; ////////////////////////////////////////////////////////////////
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message nil)
(setq initial-buffer-choice nil)
(setq frame-title-format nil)
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq pop-up-windows nil)
(setq indicate-empty-lines nil)
(setq cursor-in-non-selected-windows nil)
(setq initial-major-mode 'text-mode)
(setq default-major-mode 'text-mode)
(setq font-lock-maximum-decoration nil)
(setq font-lock-maximum-size nil)
(setq auto-fill-mode nil)
(setq fill-column 80)
(setq confirm-nonexistent-file-or-buffer nil)
(setq org-return-follows-link t)
(unless (display-graphic-p)
  (xterm-mouse-mode 1)
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line))
(if (fboundp 'scroll-bar-mode) (set-scroll-bar-mode nil))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (display-graphic-p) (menu-bar-mode t) (menu-bar-mode -1))
(setq-default tab-width 4)
(temp-buffer-resize-mode)
(setq temp-buffer-max-height 8)
(setq window-min-height 1)
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment   'utf-8)
(unless
    (or (eq system-type 'windows-nt)
        (not (file-exists-p "/bin/zsh")))
  (setq-default shell-file-name "/bin/zsh")
  (setq explicit-shell-file-name "/bin/zsh"))

(provide '9000-defaults)








