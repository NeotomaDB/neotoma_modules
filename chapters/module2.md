---
title: 'Module 2: Neotoma2 Core Commands'
description:
  'This module will show you the core commands of Neotoma2'
prev: /module1
next: /module3
type: chapter
id: 2
---

<exercise id="0" title="Introduction" type="slides">

<slides source="chapter2_01_introduction">

</slides>

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

![gif](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/siteatt.gif?raw=true)

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

![gif](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/get_datasets.gif?raw=true)

Although we cannot `get_datasets()`pass the `sitename` argument, we can pass a `sites` object. That way, we can chain filtered options:

![gif](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/get_datasets2.gif?raw=true)

Try it out!!

<codeblock id="02_07">

</codeblock>

You can also retrieve datasets by type directly from the API. You only need to use the argument `datasettype`

![gif](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/pollen.gif?raw=true)

Even better, you can also use the `loc` argument, which takes a bounding box or a geoJson string.

![gif](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/loc.gif?raw=true)

You can also mix arguments, get datasets from a specific type and location. Try it yourself here!

<codeblock id="02_08">

</codeblock>

It can be computationally intensive to obtain the full set of records for `sites` or `datasets`. 
By default the `limit` for all queries is `25`.  

To capture all results it is best practice to loop through results, using `limit` and `offset`, for example, in a `while` loop or with the `all_data=True` argument.

To create the GeoJson coordinates bounding box use this [site](https://geojson.io/), or you can use pre-existing objects within R, for example, country-level data within the `spData` package.


</exercise>

<exercise id="3" title="get_downloads()">

The `get_downloads()` command gets the most detailed information of a `site`. It contains data on: `sites`, `collection units`, `analysis units`, `samples`, `datasets`, `taxonomic data`, and `chronologies`. The only argument that it takes is the `datasetid` or a `sites` object obtained via `get_sites()` or `get_datasets()`

![gif](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/downloads1.gif?raw=true)

After obtaining a `get_downloads()` result, a typical next step is to create subsets of data for for intended analyses. For these analysis we will usually work with some extra helper functions that will be reviewed in the next module. 
In the following example, we use the `samples()` helper function.

![gif](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module2/downloads.gif?raw=true)


Try it out! 
<codeblock id="02_09">

</codeblock>

</exercise>