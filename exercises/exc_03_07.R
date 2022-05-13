# Load libraries
suppressMessages(library(neotoma2))
options(warn=-1)

# Get Downloads
cz_dl <- get_sites(c(1399, 3090, 3152, 3168)) %>% get_downloads()

# Apply samples
cz_dl %>% samples()