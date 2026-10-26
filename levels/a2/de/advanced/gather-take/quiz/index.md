---
title: Quiz — `gather`
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

`gather` sammelt nur die Werte, die an `take` gehen. Die Prüfung `$_ %% 3` ist nur für `3` und `6` wahr. Also nimmt der Code nur diese zwei. Das Ergebnis ist `[3 6]`.

</div>

{% include nav.html %}
