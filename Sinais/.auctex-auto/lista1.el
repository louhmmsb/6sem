(TeX-add-style-hook
 "lista1"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("babel" "brazil") ("xcolor" "table")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "inputenc"
    "amsfonts"
    "amsmath"
    "siunitx"
    "amssymb"
    "enumitem"
    "mathtools"
    "babel"
    "geometry"
    "graphicx"
    "bussproofs"
    "xcolor"
    "gensymb")
   (TeX-add-symbols
    '("glim" 1)
    '("ring" 1)
    '("mytitle" 1)
    '("gsum" 3)
    '("product" 3)
    "real"))
 :latex)

