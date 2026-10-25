---
title: '`for` bukloj'
---

{% include menu.html %}

La `for` buklo estas potenca ilo. Ĝi trairas multajn elementojn, unu post la alia. Ekzemple, ni prenu intervalon:

```raku
for 1..5 -> $n {
    say $n;
}
```

Ĉiufoje, kiam la buklo ruliĝas, la variablo `$n` prenas la sekvan valoron el la intervalo. Notu, ke vi ne devas deklari la variablon per `my`. La bloko de kodo ruliĝas unu fojon por ĉiu elemento de la datumfonto. Do la programo presas la nombrojn, po unu en ĉiu linio:

```console
$ raku t.raku 
1
2
3
4
5
```

La programo trairas ĉiujn valorojn, kiujn la [intervalo](/eo/essentials/ranges) `1..5` donas. Ĉi tiuj estas `1`, `2`, `3`, `4` kaj `5`.

## Preni pli ol unu valoron

Jen interesa trajto de Raku. Buklo povas preni pli ol unu elementon samtempe. La sekva programo presas du nombrojn ĉiufoje, kiam la buklo ruliĝas:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Ĉi tio estas la eligo de la programo:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
