---
title: 'Quiz — Subscript adverbs'
---

{% include menu.html %}

What does this program print?

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

{:.quiz}
0 | True
1 | False
0 | Nil
0 | (Any)

{% include quiz.html %}

<div class="extended-explanation">

The adverb `:exists` asks if the key is there. It returns `True` or `False`. There is no key `z` in the hash. So the answer is `False`.

</div>

{% include nav.html %}
