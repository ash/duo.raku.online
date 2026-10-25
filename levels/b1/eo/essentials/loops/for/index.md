---
title: '`for` bukloj'
---

{% include menu.html %}

La `for` buklo estas potenca ilo por trairi plurajn elementojn unu post la alia. Ekzemple, ni prenu intervalon:

```raku
for 1..5 -> $n {
    say $n;
}
```

En ĉi tiu programo, la variablo `$n` prenas la sekvan valoron el la intervalo en ĉiu iteracio. Rimarku, ke vi ne bezonas deklari la variablon per `my`. La bloko de kodo ripetiĝas tiom da fojoj, kiom da elementoj estas en la datumfonto. Do, la programo presas la nombrojn linio post linio:

```console
$ raku t.raku 
1
2
3
4
5
```

La programo trairas ĉiujn valorojn, kiujn la [intervalo](/eo/essentials/ranges) `1..5` produktas. Ĉi tiuj estas `1`, `2`, `3`, `4` kaj `5`.

## Preni pli ol unu valoron

Interesa trajto de Raku estas, ke vi povas preni pli ol unu elementon en unu sola iteracio. La sekva programo presas du nombrojn ĉiufoje, kiam la buklo ruliĝas:

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
