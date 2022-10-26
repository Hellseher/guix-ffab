;; hacks.scm --
;; Modified : <2022-10-25 Tue 23:30:17 BST>

;; Commentary:
;;
;; Hackage space to test some ideas with packages process and learning Guix.
;; Open Geiser REPL, load this file -> ENJOI!
;;
;; Code:

;; List of packages with format: (package-name package-inputs..)
(define %packages (list '(p01 p02 p10 p09 package-to-find)
                        '(p02 p01 p09 p08 package-to-find)
                        '(p03 p02 p08 p07)
                        '(p04 p03 p07 p06 package-to-find)
                        '(p05 p04 p06 p05)
                        '(p06 p05 p05 p04 package-to-find)
                        '(p07 p06 p04 p03 package-to-find)
                        '(p08 p07 p03 p02 package-to-find)
                        '(p09 p08 p02 p01 package-to-find)
                        '(p10 p09 p01 p0r package-to-find)))

(define (first list)
  "Alias to CAR which returns first element of provided LIST"
  (car list))

(define (collect-dependent-packages-by-inputs package)
  "Returns a list of dependent packages where PACKAGE is found in any inputs
e.g. package-inputs, package-native-inputs, package-propagated-inputs."
  (map first (filter (lambda (n) (member package n)) %packages)))

(define (list-packages)
  (format #t "~{~a~%~}~%" %packages))
