---
title: Quiz — Interpolating arrays
---

{% include menu.html %}

Here is an array:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Finish the programs below. They must print the output that we ask for.

## 1

Print the third element. Its index is `2`.

{:.quiz-code}
[2] | say &quot;The third element is @arr␣␣&quot;;

## 2

Print all the elements. Do not write an index for each of them.

{:.quiz-code}
arr[] | say &quot;This array contains: @␣␣␣␣.&quot;; | The output is ”This array contains: 10 9 8 3 2 1.“

## 3

Print the size of the array. Call the `elems` method for this.

{:.quiz-code}
{@arr.elems} | say &quot;There are ␣␣␣␣␣␣␣␣ elements.&quot;; | Curly braces required to embed Raku code into a Raku string.

{% include quiz.html %}

{% include nav.html %}
