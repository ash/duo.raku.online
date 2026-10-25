---
title: 'Solutio: Pluralis terminatio'
---

{% include menu.html %}

Programma probare debet num numerus maior sit quam unus. Si est, verbum in forma plurali esse debet.

## Codex

```raku
my $n = prompt 'Quot fasciculos effingere? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} efficti.";
```

🦋 Invenire programmatum in fasciculo [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Exitus

Programma bis aut saepius curre. Tempta inputum `1` et etiam alium numerum integrum positivum:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Quot fasciculos effingere? 10
10 fasciculi efficti.

$ raku exercises/conditional-checks/plural-ending.raku
Quot fasciculos effingere? 1
1 fasciculus effictus.
```

## Commentarium

Fortasse saepe unum `?` pro duplici `??` per errorem scribis. Fortasse etiam colon `:` pro `!!` scribis, aut ambos errores facis.

{% include nav.html %}
