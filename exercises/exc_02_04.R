# Load libraries
suppressMessages(library(neotoma2))

# Get a site
site <- get_sites(altmin = -30, altmax = 0, sitename = "Lake%")
site