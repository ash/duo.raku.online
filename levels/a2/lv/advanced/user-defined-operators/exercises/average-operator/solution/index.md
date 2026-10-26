---
title: 'Risinājums: Vidējā vērtība operators'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub infix:<avg>($a, $b) {
    ($a + $b) / 2
}

say 4 avg 10;
```

🦋 Programmas pirmkodu var atrast failā [average-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/average-operator.raku).

## Izvade

```
7
```

## Komentāri

1. Mēs deklarējam operatoru kā `infix:<avg>`. Tāpēc jūs to rakstāt starp tā diviem operandiem, kā `+` vai `~`.

1. Ķermenis saskaita abus operandus. Tad tas dala summu ar diviem. Skaitļiem `4` un `10` rezultāts ir `7`.

{% include nav.html %}
