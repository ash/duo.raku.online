---
title: 'Risinājums: Vai eksistē?'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Atrodiet programmu failā [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Izvade

```
False
True
```

## Komentāri

1. `.e` pārbauda, vai ceļš eksistē. Pirmā pārbaude notiek, pirms mēs izveidojam failu, tāpēc tā atgriež `False`.

1. Tad `spurt` izveido `test.txt`, un otrā pārbaude uz *tā paša* ceļa atgriež `True`. Pajautājiet ceļa objektam vēlreiz, un jūs saņemsiet failu sistēmas pašreizējo stāvokli.

{% include nav.html %}
