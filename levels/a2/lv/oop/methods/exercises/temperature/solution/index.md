---
title: 'Risinājums: Temperatūras pārrēķins'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Celsius {
    has $.degrees;

    method to-fahrenheit {
        $.degrees * 9 / 5 + 32;
    }
}

say Celsius.new(degrees => 100).to-fahrenheit;
```

🦋 Atrodiet programmu failā [temperature.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/temperature.raku).

## Izvade

```
212
```

## Komentāri

1. Metode izmanto objekta atribūtu `degrees`. Tāpēc formulai nevajag argumentu.

1. `100` Celsija grādi ir `212` Fārenheita grādi.

{% include nav.html %}
