;;; emacsql-sqlite-builtin.el --- This package has been merged into emacsql  -*- lexical-binding:t -*-

;; This is free and unencumbered software released into the public domain.

;; Author: Jonas Bernoulli <emacs.emacsql@jonas.bernoulli.dev>
;; Maintainer: Jonas Bernoulli <emacs.emacsql@jonas.bernoulli.dev>
;; Homepage: https://github.com/magit/emacsql
;; Package-Version: 20240825.1837
;; Package-Revision: b9f19ac5e17a
;; SPDX-License-Identifier: Unlicense

;;; Commentary:

;; This package has been merged into `emacsql' itself.

;;; Code:

(display-warning 'emacsql "Uninstall all `emacsql-*' packages.

All EmacSQL back-ends are now distributed as part of the `emacsql'
package itself, and you must uninstall all `emacsql-*' packages.
These packages now do nothing but display this warning, but if they
are located earlier on the `load-path' than `emacsql' is, then they
prevent the respective libraries from `emacsql' from being loaded,
rendering EmacSQL unusable.
" :emergency)

(provide 'emacsql-sqlite-builtin)

;;; emacsql-sqlite-builtin.el ends here