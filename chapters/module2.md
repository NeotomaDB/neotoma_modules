---
title: 'Module 2: Neotoma2 Core Commands'
description:
  'This module will teach you how to organize your environments using conda'
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

</exercise>

<exercise id="2" title="get_datasets()">

metadata regarding dataset

</exercise>

<exercise id="3" title="get_downloads()">

complete record

</exercise>