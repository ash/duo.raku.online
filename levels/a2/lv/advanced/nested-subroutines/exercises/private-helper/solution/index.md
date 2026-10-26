---
title: 'Risinājums: Privāts palīgs'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Atrodiet programmu failā [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Izvade

```
16
```

## Komentāri

1. Palīgs `double` ir iekšpus `stats`. Tāpēc jūs to redzat tikai tur. Citas programmas daļas nevar to izsaukt.

1. `stats` to lieto divas reizes. `double(3)` ir `6`, un `double(5)` ir `10`. To summa ir `16`.

{% include nav.html %}
