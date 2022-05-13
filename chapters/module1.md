---
title: 'Module 1: Intro to the Neotoma2 R Package'
description:
  'In this module, you will learn about the Neotoma2 R package and its data structure.
  In modules 2 and 3 you will learn the basic commands and you will begin your own journey 
  with Neotoma data on the following modules.
  '
prev: null
next: /module2
type: chapter
id: 1
---
<exercise id="1" title="Getting Started with Neotoma2">

#### Neotoma Data Structure

Data in Neotoma is associated with sites, specific locations with lat/long coordinates. Within a site, there may be one or more **collection units** -- locations at which samples are physically collected within the site. For example, an archaeological **site** may have one or more **collection units**, pits within a broader dig site; a pollen sampling **site** on a lake may have multiple **collection units** -- core sites within the lake basin. Collection units may have higher resolution GPS locations, but are considered to be part of the broader site. Within a **collection unit** data is collected at various **analysis units** from which **samples** are obtained.

Because Neotoma is made up of a number of constituent databases (e.g., the Indo-Pacific Pollen Database, NANODe, FAUNMAP), a set of **sample**s associated with a **collection unit** are assigned to a single **dataset** associated with a particular **dataset type** and **constituent database**.

Researchers often begin by searching for sites within a particular study area, whether that is defined by geographic or political boundaries.  From there they interrogate the available datasets for their particular dataset type of interest.  When they find records of interest, they will then often call for the data and associated chronologies.

The `neotoma2` R package is intended to act as the intermediary to support these research activities using the Neotoma Paleoecology Database.

#### Package Requirements

The earlier `neotoma` package tried to use base R as much as possible.  The `neotoma2` package now draws primarily on `dplyr` and `purrr` packages from the `tidyverse`, and on the `sf` spatial data package. The choice to integrate `tidyverse` packages was made largely because of the current ubiquity of the `tidyverse` in R education.

</exercise>

<exercise id="2" title="Start Using Neotoma2 from Binder">

You do not need to install Neotoma2. In fact, you do not even need to install R to start using Neotoma.

Click the following [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/NeotomaDB/neotoma_binder/main?urlpath=rstudio) to get you started!

The previous binder will let you work with the following dependencies:
- Neotoma2
- Tidyverse
- Leaflet
- Bacon
- Rioja

You will be taken to a browser were RStudio is already running. You can open a new .Rmd file or open an already given vignette to start exploring.

</exercise>

<exercise id="3" title="Installing Neotoma2 in your Local Computer">

If you want to load Neotoma2 in your local machine, do not hesitate to download the package.

The current package use requires the use of the `devtools::install_github()` function, to pull this working repository into a user's environment.

To install `devtools` simply do:
```R
install.packages('devtools')
```

To install `Neotoma2` do:
```R
devtools::install_github('NeotomaDB/neotoma2')
```

To read more about the development of the Neotoma2 and stay updated, [visit us](https://github.com/NeotomaDB/neotoma2) 
</exercise>

