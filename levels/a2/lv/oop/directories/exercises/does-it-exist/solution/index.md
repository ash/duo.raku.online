---
title: 'Risinājums: Vai eksistē?'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `.e` pārbauda, vai ceļš eksistē. Pirmā pārbaude notiek, pirms mēs izveidojam failu. Tāpēc tā atgriež `False`.

1. Tad `spurt` izveido `test.txt`. Otrā pārbaude ir uz *tā paša* ceļa. Tagad tā atgriež `True`. Jūs varat jautāt ceļa objektam vēlreiz. Tā atbilde parāda failu sistēmu tādu, kāda tā ir tagad.

{% include nav.html %}
