---
title: 'Module 3: Synthesis With Neotoma2 - Helper Functions'
description:
  'In this module, you will learn about the most important helper functions.'
prev: /module2
next: /module4
type: chapter
id: 3
---

<exercise id="0" title="Helper Functions">

After obtaining a `get_downloads` result, a typical next step is to create subsets of data for for intended analyses.  The following helper functions can be used on a `sites` object to return a subset of associated values as a data frame.

Some examples for further analysis are: 
- `datasets()`
- `collunits()`
- `samples()`
- `chronologies()`
- `taxa()`


Another helper function allows us to filter records to keep only particular dataset types or ages. 
- `filter() `

Other helpers return small summaries where we want to receive number of collection units or we just need the ids associated to sites, datasets, and collection units:
- `getids()`
- `summary()`

Finally, to find coordinates or to plot our findings, we can use the following functions:
- `coordinates()`
- `plotLeaflet()`

</exercise>

<exercise id="1" title="collunits()">

Neotoma data is structured spatially. Each collection location is assigned a **site**, a spatial location defined by either a point or a polygon. It may be a lake, an archaeological site, a swamp, or another location.

Within a **site**, there may be one or more **collection units**.  
A collection unit represents the material (e.g., sediment core) removed from a specific location within a **site** (e.g., a lake). So, a researcher may have taken multiple cores within a lake basin, or an archaeologist may have several dig sites within a larger area. 

The `collunits()` function returns metadata regarding each collection unit. 

See it in action:

![img](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module3/collunits.gif?raw=true)

You can apply the `collunits()` function to any `sites` object obtained via `get_sites()`, `get_datasets()` or `get_downloads()`
Notice that although `get_sites` and `get_datasets()` would generate the same level of detail in `collunits()`, `get_downloads()` would yield more information.

Try it yourself!


<codeblock id="03_01">

Apply `collunits()` to a `get_sites()` obtained `sites`

</codeblock>

<codeblock id="03_02">

Apply `collunits()` to a `get_datases()` obtained `sites`

</codeblock>

<codeblock id="03_03">

Apply `collunits()` to a `get_downloads()` obtained `sites`

</codeblock>

</exercise>

<exercise id="2" title="datasets()">

Collection unit material is subdivided into **analysis units** (e.g., sediment intervals within a core). **Samples** are defined as material removed from analysis units and analyzed for a particular dataset type (e.g., diatoms, pollen, water chemistry).   Groups of analysis units (samples) from an individual collection unit are then grouped into a **dataset**.

The `datasets()` function returns a summary about the datasets metadata.

See the difference on what it returns when applied to a `get_sites()` obtained object vs. a `get_datasets()` obtained object:

![img](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module3/datasets.gif?raw=true)

Try it out yourself:

The first code chunk applies `datasets()` to a `get_sites()` obtained `sites` object while the second chunk applies `datasets()` to a `get_datasets()` applied object. The third chunk applies `datasets()` to a `get_downloads()` 

<codeblock id="03_04">

Apply datasets() to a `get_sites()` obtained `sites`

</codeblock>

<codeblock id="03_05">

Apply datasets() to a `get_datases()` obtained `sites`

</codeblock>

<codeblock id="03_06">

Apply datasets() to a `get_downloads()` obtained `sites`

</codeblock>

For now, it might feel that `get_datasets()` and `get_downloads()` yield the same amount of information.

In later functions, such as `chronologies()` or `samples()` you will experience the full potential of `get_downloads()`

</exercise>

<exercise id="3" title="samples()">

`samples()` is best applied to a `get_downloads()` obtained `sites` object. Otherwise, it will not yield appropriate results.

Different from `datasets()` or `collunits()`, the `samples()` function helps retrieve all raw analysis units.

See it in action!

![img](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module3/samples.gif?raw=true)

Now, try it yourself!

<codeblock id="03_07">

Apply samples() to a `get_downloads()` obtained `sites`

</codeblock>

You might wonder what would happen if you applied it to a `get_datasets()` or `get_sites()` obtained `sites` object. If you remember the fields returned from each command are different. You would simply obtain an empty table. Try it out yourself! 


<codeblock id="03_08">

Peek what would happen if you apply `samples()` to a `get_datasets()` or even a `get_sites()` obtained `sites` object.

</codeblock>

If you ever get an empty table, consider applying `get_downloads()` to your `sites` object before assuming that it is an empty `site`.

</exercise>

<exercise id="4" title="chronologies()">

The `chronologies()` function obtains chronology data from a record(s) and returns results as a list. Same as the `samples()` function, it will only yield appropriate results when applied to a `sites` object obtained via `get_downloads()`

See it in action!

![img](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module3/chronologies.gif?raw=true)

Try it yourself!

<codeblock id="03_09">

Peek through the chronologies of a downloads object.

</codeblock>


#### Exercise

Retrieve datasets which datasettype is pollen. Then get the chronologies.

<codeblock id="03_09">

Use `get_datsets()` first.
Are you using the `datasettype` argument?
Are you using `chronologies` on a `get_downloads` obtained `sites` object?

</codeblock>

</exercise>

<exercise id="5" title="taxa()">

The `taxa()` function helps create a dataframe of all sampleunits. It differes from the `samples()` function in that _____
. 


The dataframe approach allows to use **R**'s *dplyr* library to manipulate to convert into a wide count dataframe.
This way, the researcher can apply the code that best suits their needs.

![img](https://github.com/NeotomaDB/neotoma_workshop/blob/main/static/module3/taxa.gif?raw=true)

Your turn!

<codeblock id="03_11">

Peek through the taxa.

Feel free to use the `dplyr` package to modify the table

</codeblock>


</exercise>

<exercise id="6" title="filter()">


</exercise>

<exercise id="7" title="getids()">


</exercise>

<exercise id="8" title="summary()">


</exercise>

<exercise id="9" title="coordinaes()">


</exercise>

<exercise id="10" title="plotLeaflet()">


</exercise>