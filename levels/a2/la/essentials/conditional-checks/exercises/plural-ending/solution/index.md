---
title: 'Solutio: Pluralis terminatio'
---

{% include menu.html %}

Programma numerum ab usore probare debet. Si maior est quam unus, verbum plurale esse debet.

## Codex

```raku
my $n = prompt 'Quot fasciculos effingere? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} efficti.";
```

🦋 Invenire programmatum in fasciculo [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Exitus

Programma saltem bis curre. Proba id cum inputu `1`. Deinde quemlibet alium numerum integrum maiorem quam zero tempta:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Quot fasciculos effingere? 10
10 fasciculi efficti.

$ raku exercises/conditional-checks/plural-ending.raku
Quot fasciculos effingere? 1
1 fasciculus effictus.
```

## Commentarium

Hic saepe errare potes. Fortasse unum `?` pro duplici `??` scribis. Aut fortasse colon `:` pro `!!` scribis. Aut fortasse utrumque facis.

{% include nav.html %}
