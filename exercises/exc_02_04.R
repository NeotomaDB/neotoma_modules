# Load libraries
suppressMessages(library(neotoma2))

# Get a site
sites <- get_sites(altmin = -30, altmax = 0, sitename = "Lake%")
sites