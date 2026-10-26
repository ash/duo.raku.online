---
title: Native types
---

{% include menu.html %}

The types you have used so far, `Int`, `Num` and `Str`, are full Raku objects. They are flexible and can tell you about themselves. They can also be as large as you need. Raku also has a second, parallel family of _native_ types. They match directly the way the machine itself stores values. These are `int`, `num`, `str`, and a set of integers with a fixed size.

Native types have names in lower case. They give up some flexibility to get speed and a fixed size. They also behave a little differently from the matching boxed types. This section shows what native types are and how their fixed size leads to overflow.

{% include nav.html %}
