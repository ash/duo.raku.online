---
title: Quiz — Nested arrays
---

{% include menu.html %}

An array of arrays keeps temperatures. They are from four days. There are three measurements for each day:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Single elements

What does each of these lines of code print?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Comparing

Each comparison gives a Boolean result, `True` or `False`. Choose the right result.

{:.quiz-select}
False | `@data[0][0] == @data[2][2]` is&nbsp; (: False, True :)
True | `@data[1][1] == @data[2][0]` is&nbsp; (: False, True :)

## Lengths

Here are some calls of the `elems` method. What value does each call return?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
