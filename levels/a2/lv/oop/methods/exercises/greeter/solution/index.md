---
title: 'Risinājums: Apgriezts vārds'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 Atrodiet programmu failā [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Izvade

```
ukaR
```

## Komentāri

1. Metode `reversed` iegūst objekta `text`. Tā to dara ar piekļuves metodi `$.text`. Pēc tam tā izsauc uz tā iebūvēto metodi `flip`. `flip` atgriež virkni otrādi.

1. Programma izsauc metodi tieši uz jaunā `Word` objekta. Metode neko nesaglabā. `reversed` tikai izveido jaunu vērtību no atribūta un atgriež to.

1. Klases iekšā jūs varat nolasīt mainīgo arī tieši. Tam jums nevajag piekļuves metodi:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
