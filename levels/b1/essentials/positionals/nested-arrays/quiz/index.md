---
title: Quiz — Nested arrays
---

{% include menu.html %}

An array of arrays keeps the temperatures from four days. There are three measurements per day:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Single elements

What do you expect each of the following lines of code to print?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Comparing

Choose the correct Boolean result of each of these comparisons.

{:.quiz-select}
False | `@data[0][0] == @data[2][2]` is&nbsp; (: False, True :)
True | `@data[1][1] == @data[2][0]` is&nbsp; (: False, True :)

## Lengths

What value does each of these calls of the `elems` method return?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
