---
title: 'Risinājums: Vidējā vērtība operators'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Operators ir deklarēts kā `infix:<avg>`. Tāpēc jūs to rakstāt starp tā diviem operandiem, tieši kā `+` vai `~`.

1. Ķermenis saskaita abus operandus un dala summu ar diviem. Skaitļiem `4` un `10` rezultāts ir `7`.

{% include nav.html %}
