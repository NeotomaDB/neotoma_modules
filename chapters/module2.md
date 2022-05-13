---
title: 'Module 2: Neotoma2 Core Commands'
description:
  'This module will teach you how to organize your environments using conda'
prev: /module1
next: /module3
type: chapter
id: 2
---

<exercise id="0" title="Introduction">

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTCB947TF8imDLr7lIm6FgoctRuRSkz2nsymFNbp1DglVzCuEQv2iyYZeAoKCfXEhCyzRFvl8Ec3UtK/embed?start=false&loop=false&delayms=3000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>



</exercise>

<exercise id="1" title="get_sites()">

#### Sites

`get_sites()` is the most basic core command to help the user get metadata from a site. 

Check out the most simple usage in action

![img](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/sites_id.gif?raw=true)

Now, try it out yourself! Change the two __ for your favourite number and run the code!

The first time you run this code, it might take a couple of minutes to get it started.

<codeblock id="02_01">

Change the __ for a number

</codeblock>

You can also pass a vector with numbers and execute `get_sites()` to obtain multiple records at once:

![img](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/sites_list.gif?raw=true)

Try it yourself! 

<codeblock id="02_02">

Change the __ for a vector of number

</codeblock>

### Searching by Name

You can also search for a record by using its name; for this, you need to use the argument `sitename=`.

You can pass an exact name or you can use wildcards `%` for an approximate name.

Remember that a name is a string and so, it must be passed between single `'` or double quotations `"`.

![img](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/sites_name.gif?raw=true)

<codeblock id="02_03">

Change the name. Play around with wildcards and see what happens! 

</codeblock>

There are other arguments you can use in `get_sites()` such as `altmin` or `altmax`.

Remember you can combine arguments as well!!

<codeblock id="02_04">

Play with different altitudes and sitenames.

</codeblock>

#### Accessing a site's metadata

`sites` are composed of several smaller objects of class `site`.
We can call any individual site using `[[ ]]`

A single `site` object has a lot of data.  You can access a site's data using `$`.

```
site[[1]]$siteid
```

![gif]()

Some of the fields you can access are:
```markdown
siteid
sitename
lat
long
area
notes
description
```

Try it out!

<codeblock id="02_05">

Play with different altitudes and sitenames.

</codeblock>

#### Exercise

Using dplyr and sites attributes, retrieve all ids from a `sites` object

<codeblock id="02_06">

Convert a sites object to a dataframe.
Extract the column of ids

</codeblock>

</exercise>

<exercise id="2" title="get_datasets()">

#### Datasets

If you need to get to a deeper level of the sites object, you may want to look at the `get_datasets()` function.  You can use `get_datasets()` using search parameters, or you can use it on an existing `sites` object.

`get_datasets()` adds additional metadata to the `site` objects, letting us know which `datasettypes` are associated with a site, and the dataset sample locations at the site.

Getting the datasets by id is the easiest call, you can also pass a vector of IDs or if you already have a `sites` object, you can pass a sites object. 

**Warning** `get_datasets()` does not take `sitename` or `siteid` as inputs, if you wish to use those you can chain `get_sites()` and `get_datasets()`.

```{r getdatasetsbyid}
# Getting datasets by ID
my_datasets <- get_datasets(c(5, 10, 15, 20))
my_datasets
```

You can also retrieve datasets by type directly from the API.

```{r getdatasetsbytype}
# Getting datasets by type
my_pollen_datasets <- get_datasets(datasettype = "pollen", limit = 25)
my_pollen_datasets
```

It can be computationally intensive to obtain the full set of records for `sites` or `datasets`. By default the `limit` for all queries is `25`.  The default `offset` is `0`.  To capture all results it is possible to add `limit=99999999` or some similarly high number.  **However**, this is hard on the Neotoma servers.  Best practice is to loop through results, using `limit` and `offset`, for example, in a `while` loop.  In a result set of 100 records, the `limit`, when `offset` is 0 (the default), ensures that only the first 25 records are returned.  Keeping the `limit` at 25, and increasing the `offset` to 25 would give us the next 25 records.

We can use that in a `while` loop in R in the following way:

```{r searchOffset, eval=FALSE}
run = TRUE
offset <- 0
while(run) {
  sites <- get_sites(offset=offset, limit = 500)
  if(length(sites) == 0) {
    run = FALSE
  }
  if(exists('allSites')) {
    allSites <- c(allSites, sites)
  } else {
    allSites <- sites
  }
  offset <- offset + 500
}
```

It can be computationally intensive to obtain the full set of records for `sites` or `datasets`. By default the `limit` for all queries is `25`.  The default `offset` is `0`.  To capture all results it is possible to add the `limit=99999999` or some similarly high number.  **However**, this is hard on the Neotoma servers.  Best practice is to loop through results, you can do that automatically using the `all_data=TRUE` argument.

We can use that `all_data=TRUE` in R in the following way:

```{r all_data, eval=FALSE}
allSites <- get_sites(all_data = TRUE)
allSites
 
```

Following this  can see that the total sites returned is equal to the total number of sites in Neotoma.

You can get the coordinates to create a GeoJson bounding box from [here](https://geojson.io/#map=2/20.0/0.0), or you can use pre-existing objects within R, for example, country-level data within the `spData` package:

Accessing datasets by bounding box:

```{r boundingBox}
brazil <- '{"type": "Polygon", 
            "coordinates": [[
                [-73.125, -9.102],
                [-56.953, -33.138],
                [-36.563, -7.711],
                [-68.203, 13.923],
                [-73.125, -9.102]
              ]]}'
# We can make the geojson a spatial object if we want to use the
# functionality of the `sf` package.
brazil_sf <- geojsonsf::geojson_sf(brazil)
brazil_datasets <- get_datasets(loc = brazil_sf)
brazil_datasets
```

Now we have an object called `brazil_datasets` that contains `r length(brazil_datasets)`.  

You can plot these findings!

</exercise>

<exercise id="3" title="get_downloads()">

complete record

</exercise>