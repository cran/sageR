## ----echo=FALSE---------------------------------------------------------------
#file.edit(normalizePath("~/.Renviron"))
LOCAL <- identical(Sys.getenv("LOCAL"), "TRUE")
#, eval = LOCAL for skip on CRAN test
LOCAL=TRUE#YES
#knitr::opts_chunk$set(purl = LOCAL, eval=LOCAL)
knitr::opts_chunk$set(purl = LOCAL)
NOT_CRAN <- identical(tolower(Sys.getenv("NOT_CRAN")), "TRUE")
knitr::opts_chunk$set(purl = NOT_CRAN)
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
SAVE_GRAPHS=TRUE#

