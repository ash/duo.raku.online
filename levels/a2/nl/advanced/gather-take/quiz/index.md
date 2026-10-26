---
title: Quiz — `gather`
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
my @r = gather for 1..6 {
    take $_ if $_ %% 3;
};

say @r;
```

{:.quiz}
1 | [3 6]
0 | [1 2 3 4 5 6]
0 | [3]
0 | []

{% include quiz.html %}

<div class="extended-explanation">

`gather` verzamelt alleen de waarden die naar `take` gaan. De controle `$_ %% 3` is alleen waar voor `3` en `6`. De code neemt dus alleen deze twee. Het resultaat is `[3 6]`.

</div>

{% include nav.html %}
