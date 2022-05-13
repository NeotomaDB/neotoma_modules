# Load libraries
suppressMessages(library(neotoma2))
options(warn=-1)

# Get Sites
cz_sites <- get_sites(c(1399, 3090, 3152, 3168))

# Apply collunits
cz_sites %>% collunits()
