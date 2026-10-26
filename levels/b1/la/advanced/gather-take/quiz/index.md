---
title: 'Quiz — `gather`'
---

{% include menu.html %}

Quid sequens programma imprimit?

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

`gather` solum valores colligit pro quibus `take` revera vocatur. Probatio `$_ %% 3` vera est solum pro `3` et `6`. Itaque soli hi duo capiuntur, et resultatum est `[3 6]`.

</div>

{% include nav.html %}
