---
title: The metaobject protocol
---

{% include menu.html %}

Every class, role and type in Raku is described by another object, called its _metaobject_. The metaobject knows the name of the type and its place in the inheritance tree. It also knows the attributes and methods of the type. The way to work with these metaobjects is the _metaobject protocol_, or MOP.

You have already used a small part of it: `.^name` is a MOP call. This section explains the `.^` syntax properly. It shows the most useful meta-methods for looking inside a type. And it shows that the MOP even lets you add methods to a class. You can do this while the program runs.

{% include nav.html %}
