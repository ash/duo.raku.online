---
title: '`for` bukloj'
---

{% include menu.html %}

La `for` buklo estas tre utila. Ĝi trairas multajn erojn, unu post la alia. Ekzemple, prenu intervalon:

```raku
for 1..5 -> $n {
    say $n;
}
```

`$n` ricevas la sekvan valoron el la intervalo ĉiun fojon. Vi ne bezonas skribi `my` antaŭ `$n`. La bloko ruliĝas unu fojon por ĉiu valoro en la intervalo. Do la programo presas la nombrojn, po unu en ĉiu linio:

```console
$ raku t.raku 
1
2
3
4
5
```

La programo trairas ĉiujn valorojn de la [intervalo](/eo/essentials/ranges) `1..5`. Ĉi tiuj valoroj estas `1`, `2`, `3`, `4` kaj `5`.

## Pli ol unu valoro samtempe

En Raku, buklo povas preni du aŭ pli da eroj ĉiufoje. Ĉi tiu programo presas du nombrojn samtempe:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Jen, kion la programo presas:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
