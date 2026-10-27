---
title: 'Risinājums: Trīskāršošana kā metode'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Atrodiet programmu failā [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Izvade

```
21
```

## Komentāri

1. Kā metode `triple` pieder objektam un izmanto objekta `n`. Jūs tai neko nepadodat.

1. Apakšprogrammas versijā dati pienāk kā arguments. Šeit dati tā vietā dzīvo objektā. Abas versijas dod `21`.

{% include nav.html %}
