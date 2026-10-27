---
title: 'Risinājums: Izdzēsiet failu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Atrodiet programmu failā [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Izvade

```
True
False
```

## Komentāri

1. `spurt` izveido failu. Tāpēc pirmā `.e` pārbaude dod `True`.

1. `unlink` izdzēš failu. Tad otrā `.e` pārbaude dod `False`. Faila vairs nav. Ievērojiet, ka mēs lietojam `.e`, nevis `.f`. `.f` pārbauda ceļa tipu. Tā dod kļūdu, ja ceļa vairs nav. Bet `.e` vienkārši atbild `False`.

{% include nav.html %}
