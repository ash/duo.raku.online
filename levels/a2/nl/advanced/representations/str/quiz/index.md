---
title: Quiz — gist en Str
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
my @a = 1, 2, 3;
say @a.Str;
```

{:.quiz}
0 | [1 2 3]
1 | 1 2 3
0 | (1 2 3)
0 | 1, 2, 3

{% include quiz.html %}

<div class="extended-explanation">

`.Str` geeft de gewone stringvorm. De elementen staan gewoon met spaties ertussen. Er zijn geen haken: `1 2 3`. De vorm met haken, `[1 2 3]`, komt van `.gist`. Dus drukt `say @a` die ook af.

</div>

{% include nav.html %}
