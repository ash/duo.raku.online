---
title: '`for` bukloj'
---

{% include menu.html %}

La `for` buklo estas forta ilo. Ĝi trairas multajn elementojn, unu post la alia. Ekzemple, ni prenu intervalon:

```raku
for 1..5 -> $n {
    say $n;
}
```

En ĉi tiu programo, la variablo `$n` ricevas la sekvan valoron el la intervalo ĉiun fojon. Vi ne bezonas deklari la variablon per `my`. La bloko de kodo ruliĝas unu fojon por ĉiu elemento de la intervalo. Do la programo presas la nombrojn, po unu en ĉiu linio:

```console
$ raku t.raku 
1
2
3
4
5
```

La programo trairas ĉiujn valorojn de la [intervalo](/eo/essentials/ranges) `1..5`. Ĉi tiuj estas `1`, `2`, `3`, `4` kaj `5`.

## Pli ol unu valoro samtempe

En Raku, buklo povas preni pli ol unu elementon samtempe. Ĉi tiu programo presas du nombrojn ĉiun fojon:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Jen la eligo de la programo:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
