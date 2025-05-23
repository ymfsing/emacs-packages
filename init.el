;;; init.el --- init file for github ci -*- coding: utf-8; lexical-binding: t; -*-


;;; Commentary:
;;
;; init file for github ci


;;; Code:


;;; Update by adding lines



;; Initialize package sources

(require 'package)

(setq package-archives '(("elpa"   . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")
                         ("melpa"  . "https://melpa.org/packages/")
                         ("gh-melpa" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/melpa/")
                         ))

(setq package-archive-priorities '(("elpa"   . 90)
                                   ("nongnu" . 70)
                                   ("melpa"  . 50)
                                   ("gh-melpa"  . 30)
                                   ))

;; (when (boundp 'package-pinned-packages)
;;   (setq package-pinned-packages
;;         '((emacsql . "gh-melpa"))))

(package-initialize)
(package-refresh-contents)

(defvar mypackages
  '(
    ;;; elpa mirror
    ;; gnu-elpa-keyring-update
    quelpa
    elpa-mirror
    auto-package-update
    ;;; init
    gcmh
    ;;; chinese
    pyim
    osx-dictionary
    fanyi
    go-translate
    ;;; completion
    yasnippet
    ;;; edit
    super-save
    vundo
    avy
    hl-todo
    ;;; files
    dired-git-info
    dired-rsync
    diredfl
    ;;; evil
    evil
    evil-lion
    keyfreq
    keycast
    ;;; minibuffer
    vertico
    marginalia
    orderless
    consult
    consult-dir
    consult-org-roam
    consult-yasnippet
    embark
    embark-consult
    ;;; ui
    posframe
    all-the-icons
    all-the-icons-dired
    all-the-icons-ibuffer
    beacon
    doom-themes
    doom-modeline
    diminish
    rainbow-delimiters
    symbol-overlay
    burly
    winum
    shackle
    ;;; vc-msg
    blamer
    diff-hl
    ;;; prog
    dape
    citre
    format-all
    aggressive-indent
    devdocs-browser
    germanium
    applescript-mode
    dockerfile-mode
    docker-compose-mode
    ;; auctex
    elisp-demos
    sly
    suggest
    lua-mode
    markdown-mode
    markdown-toc
    jupyter
    ruby-mode
    vterm
    vterm-toggle
    web-mode
    emmet-mode
    typescript-mode
    impatient-mode
    json-mode
    yaml-mode
    nix-mode
    plantuml-mode
    ;;; org
    org
    org-contrib
    org-appear
    valign
    org-download
    toc-org
    ox-pandoc
    anki-editor
    org-roam
    org-roam-ui
    org-static-blog
    ;;; tools
    aidermacs
    minuet
    gptel
    leetcode
    speed-type
    flycheck
    )
  "A list of packages to ensure are installed at launch.")


;; Scans the list in mypackages
;; If the package listed is not already installed, install it
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      mypackages)


;; quelpa packages https://github.com/quelpa/quelpa

(setq quelpa-checkout-melpa-p nil
      quelpa-update-melpa-p nil
      quelpa-melpa-recipe-stores nil
      quelpa-git-clone-depth 1)

(quelpa '(pyim-tsinghua-dict
          :fetcher github
          :repo "redguardtoo/pyim-tsinghua-dict"
          :files ("*.el" "*.pyim")))

(quelpa '(yasnippet-snippets
          :fetcher github
          :repo "ymfsing/yasnippet-snippets"
          :files ("*.el" "snippets")))

(quelpa '(color-rg :fetcher github :repo "manateelazycat/color-rg"))

(quelpa '(thing-edit :fetcher github :repo "manateelazycat/thing-edit"))

(quelpa '(auto-save :fetcher github :repo "manateelazycat/auto-save"))

(quelpa '(clue :fetcher github :repo "AmaiKinono/clue"))

(quelpa '(lsp-bridge :fetcher github
                     :repo "manateelazycat/lsp-bridge"
                     :files ("*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")))
(quelpa '(popon :fetcher git :url "https://codeberg.org/akib/emacs-popon.git"))
(quelpa '(acm-terminal :fetcher github :repo "twlz0ne/acm-terminal"))

(quelpa '(org-mac-link :fetcher github :repo "ymfsing/org-mac-link"))

(quelpa '(org-imagine :fetcher github :repo "metaescape/org-imagine"))

;; (quelpa '(org-noter-plus :fetcher github :repo "yuchen-lea/org-noter-plus"))

;; (quelpa '(org-media-note :fetcher github :repo "yuchen-lea/org-media-note"))

(quelpa '(mcp :fetcher github :repo "lizqwerscott/mcp.el"))


;; some pinned packages

;; (quelpa '(telega
;;           :fetcher github
;;           :repo "zevlg/telega.el"
;;           :branch "release-0.8.0"
;;           :files (:defaults "etc" "server" "contrib" "Makefile")))

;; (quelpa '(aggressive-indent
;;           :fetcher github
;;           :repo "Malabarba/aggressive-indent-mode"
;;           :commit "70b3f0add29faff41e480e82930a231d88ee9ca7"
;;           :files ("*.el")))


;;; init.el ends here
