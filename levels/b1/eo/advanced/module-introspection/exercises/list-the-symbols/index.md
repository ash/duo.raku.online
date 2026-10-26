---
title: Listigi la simbolojn
translations_gpt:
---

{% include menu.html %}

## Problemo

Vi havas modulon en la dosiero `Circle.rakumod`, kiu difinas du `our`-variablojn:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Skribu programon, kiu uzas la modulon. Unue, ĝi presas, kiom da nomoj la pakaĵo de la modulo difinas. Poste ĝi presas la nomojn mem en alfabeta ordo.

## Ekzemplo

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
