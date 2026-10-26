---
title: Native types
---

{% include menu.html %}

So far, you have used the types `Int`, `Num`, and `Str`. They are full Raku objects. They are flexible. You can ask them about themselves, for example about their type. And they can be as big as you need. Raku also has a second group of types, the _native_ types. They match the way the computer itself keeps values. They are `int`, `num`, `str`, and some integers with a fixed size.

Native types have names in lower case. They are less flexible, but they are faster. Their size is fixed. They also work a little differently from the full types. This section shows what native types are. It also shows how a fixed size leads to overflow.

{% include nav.html %}
