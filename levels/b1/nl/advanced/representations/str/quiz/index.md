---
title: Quiz — gist en Str
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

`.Str` geeft de gewone stringvorm. Hier zijn de elementen gewoon met spaties verbonden, zonder haken: `1 2 3`. De vorm met haken, `[1 2 3]`, krijg je van `.gist`, en dus ook van `say @a`.

</div>

{% include nav.html %}
