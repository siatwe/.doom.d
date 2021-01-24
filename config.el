(setq user-full-name "Simon Attila Weis"
      user-mail-address "simonattilaweis@tutanota.com")
(setq calendar-latitude 47.73
      calendar-longitude 12.88)

(setq doom-theme 'doom-dracula)
(doom-themes-visual-bell-config)

(setq display-line-numbers-type nil)

(global-hl-line-mode +1)

(setq org-directory "~/.org/")
(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq calendar-week-start-day 1)
(setq org-tags-exclude-from-inheritance '("crypt"))

(setq org-agenda-prefix-format '((agenda . " %i %-12:c%?-12t% s")
                                 (timeline . "  % s")
                                 (todo .
                                       " %i %-12:c %(concat \"[ \"(org-format-outline-path (org-get-outline-path)) \" ]\") ")
                                 (tags .
                                       " %i %-12:c %(concat \"[ \"(org-format-outline-path (org-get-outline-path)) \" ]\") ")
                                 (search . " %i %-12:c")))

(use-package! evil
  :config
  (setq-default evil-kill-on-visual-paste nil)
  (setq evil-escape-key-sequence "jj")
  (setq evil-escape-delay 0.6))
