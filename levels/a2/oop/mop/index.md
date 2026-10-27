---
title: The metaobject protocol
---

{% include menu.html %}

In Raku, another object describes every class, role and type. This object is its _metaobject_. The metaobject knows the name of the type. It knows the attributes and the methods of the type. It also knows where the type is in the tree of inheritance. The way to use these metaobjects is the _metaobject protocol_, or MOP.

You already used a small part of it: `.^name` is a MOP call. This section explains the `.^` syntax properly. It shows the most useful meta-methods. These are methods of a metaobject. With them, you can look inside a type. With the MOP, you can even add methods to a class. You can do it while the program runs.

{% include nav.html %}
