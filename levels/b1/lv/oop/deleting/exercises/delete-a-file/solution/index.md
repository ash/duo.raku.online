---
title: 'Risinājums: Izdzēsiet failu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `spurt` izveido failu, tāpēc pirmā `.e` pārbaude dod `True`.

1. `unlink` izdzēš failu. Tad otrā `.e` pārbaude dod `False`, jo faila vairs nav. Ievērojiet, ka mēs lietojam `.e`, nevis `.f`. Tipa pārbaude `.f` izmestu kļūdu ceļam, kura vairs nav. Bet `.e` vienkārši atbild `False`.

{% include nav.html %}
