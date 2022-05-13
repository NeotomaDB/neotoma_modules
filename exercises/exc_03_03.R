# Load libraries
suppressMessages(library(neotoma2))
options(warn=-1)

# Get Sites
cz_sites <- get_sites(c(1399, 3090, 3152, 3168))

# Get Downloads detail
cz_downloads <- get_downloads(cz_sites)

# Apply collunits
cz_downloads %>% collunits()