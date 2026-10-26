---
title: Quiz — `gather`
---

{% include menu.html %}

Que imprime el siguiente programa?

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

`gather` recoge solo los valores con los que de verdad se llama a `take`. La comprobación `$_ %% 3` es verdadera solo para `3` y `6`. Así que solo se toman esos dos, y el resultado es `[3 6]`.

</div>

{% include nav.html %}
