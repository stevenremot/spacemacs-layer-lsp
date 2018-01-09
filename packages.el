;;; packages.el --- language-server-protocol layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Steven Rémot <steven.remot@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


;;; Commentary:
;; 

;;; Code:

(defconst language-server-protocol-packages
  '(lsp-mode company-lsp)
  "The list of Lisp packages required by the language-server-protocol layer.")

(defun language-server-protocol/init-lsp-mode ()
  (use-package lsp-mode
    :init (language-server-protocol/setup-lsp)))

(defun language-server-protocol/init-company-lsp ()
  (use-package company-lsp
    :init (eval-after-load 'company
            '(add-to-list 'company-backends #'company-lsp))))

;;; packages.el ends here
