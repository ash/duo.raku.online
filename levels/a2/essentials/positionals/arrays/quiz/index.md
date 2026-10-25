---
title: Quiz — Arrays
---

{% include menu.html %}

Here is an array:

```raku
my @data = 10, 20, 30, 40, 50;
```

## Array elements

What do these lines print?

{:.quiz-select}

10 | `say @data[0];` — (: 10, 20, 30, 40, 50 :) | Don’t forget the elements are counted from `0`.
40 | `say @data[3];` — (: 10, 20, 30, 40, 50 :) | The index `3` stands for the 4<sup>th</sup> element.
50 | `say @data[4];` — (: 10, 20, 30, 40, 50 :)

## Array length

What do these statements print?

{:.quiz-select}
5 | `say @data.elems;` — (: 0, 1, 2, 3, 4, 5 :)
5 | `say +@data;` — (: 0, 1, 2, 3, 4, 5 :) | This conversion gives the size of the array.
5 | `say +@data.elems;` — (: 0, 1, 2, 3, 4, 5 :) | Casting the result of `@data.elems` to an integer, thus no change.

{% include quiz.html %}

{% include nav.html %}
