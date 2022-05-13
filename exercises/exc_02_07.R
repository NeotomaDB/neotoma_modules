# Load libraries
suppressMessages(library(neotoma2))
suppressMessages(library(dplyr))

# Get a site
my_datasets <- get_sites(altmin = -30, altmax = 0, sitename = "Lake%") %>%
               get_datasets()

my_datasets