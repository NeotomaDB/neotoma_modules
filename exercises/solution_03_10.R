# Load libraries
suppressMessages(library(neotoma2))
options(warn=-1)


# Get Datasets associated only to pollen
po_ds <- get_sites(datasettype == "pollen") 


# Download the information. Assign it to po_dl

po_dl <- get_downloads(po_ds)

# Retrieve the chronologies
po_dl %>% chronologies()