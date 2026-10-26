---
title: Kvizo — Prefikso aŭ postfikso
translations_gpt:
---

{% include menu.html %}

Vi vidis `++` *post* variablo, kiel postfikson. Vi ankaŭ povas skribi ĝin *antaŭ* la variablo. En kiu kategorio estas `++` en `++$x`?

```raku
my $x = 5;
say ++$x;
```

{:.quiz}
1 | prefix
0 | postfix
0 | infix
0 | postcircumfix

{% include quiz.html %}

<div class="extended-explanation">

La kategorio dependas nur de la *pozicio*. En `++$x`, la operatoro venas antaŭ sia sola operando, do ĝi estas **prefiksa** operatoro. La tute sama `++` estas postfikso, kiam ĝi venas poste, kiel en `$x++`. Ambaŭ formoj pliigas `$x` je unu. La prefiksa formo redonas la novan valoron, do ĉi tio presas `6`.

</div>

{% include nav.html %}
