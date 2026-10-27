---
title: 'Risinājums: Fails vai direktorija?'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Atrodiet programmu failā [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Izvade

```
True
False
```

## Komentāri

1. `.f` pārbauda, vai ceļš ir parasts fails, tāpēc failam `a.txt` tā atgriež `True`.

1. `.d` pārbauda, vai tā ir direktorija. Tieši tam pašam ceļam tā atgriež `False`. Tas ir tāpēc, ka `a.txt` ir fails, nevis direktorija. Abas pārbaudes viena otru papildina. Tā jūs atšķirat failu no direktorijas.

{% include nav.html %}
