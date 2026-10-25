---
title: Quiz — Interpolating arrays
---

{% include menu.html %}

You have the following array:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Complete the programs below so that they print the output we ask for.

## 1

Print the third element, which is the item with index `2`.

{:.quiz-code}
[2] | say &quot;The third element is @arr␣␣&quot;;

## 2

Print all the elements, without writing the index of each one.

{:.quiz-code}
arr[] | say &quot;This array contains: @␣␣␣␣.&quot;; | The output is ”This array contains: 10 9 8 3 2 1.“

## 3

Print the size of the array with the help of the `elems` method.

{:.quiz-code}
{@arr.elems} | say &quot;There are ␣␣␣␣␣␣␣␣ elements.&quot;; | Curly braces required to embed Raku code into a Raku string.

{% include quiz.html %}

{% include nav.html %}
