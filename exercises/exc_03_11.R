# Load libraries
suppressMessages(library(neotoma2))
options(warn=-1)


# Get Datasets associated only to pollen
po_ds <- get_sites(datasettype == "pollen") 


# Download the information to po_dl
po_dl <- get_downloads(po_ds)

# Retrieve the taxa
po_dl %>% taxa()