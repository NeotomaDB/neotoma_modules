library(neotoma)
library(leaflet)
library(analogue, quietly = TRUE)
options(warn=-1)

some_wi <- neotoma::get_dataset(gpid = "Wisconsin", datasettype = "pollen", ageyoung = 4000, ageold = 6000)

wi_pollen <- neotoma::get_download(some_wi, verbose = FALSE)

Stratiplot(wi_pollen[[2]])
