---
title: 'Solvo: Sumo de nombroj de 1 ĝis 100'
---

{% include menu.html %}

Kiel trovi la sumon de la entjeroj de 1 ĝis 100? Kompreneble, vi povas adicii ĉiujn nombrojn en unu longa esprimo. Aŭ vi povas skribi buklon. Bukloj venas poste en la kurso. Sed la plej bona maniero estas bone konata [formulo](https://en.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_⋯):

<div class="formula"><img src="sum.png" style="height: 3.5em; width: auto" /></div>

Kun la formulo, la solvo estas tre simpla.

## Kodo

```raku
my $N = 100;
my $sum = $N * (1 + $N) / 2;
say "La sumo de la nombroj de 1 ĝis $N estas $sum.";
```

🦋 Vi povas trovi la plenan kodon en la dosiero [sum1-100.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum1-100.raku).

## Eligo

```console
$ raku exercises/numbers/sum1-100.raku 
La sumo de la nombroj de 1 ĝis 100 estas 5050.
```

{% include nav.html %}
