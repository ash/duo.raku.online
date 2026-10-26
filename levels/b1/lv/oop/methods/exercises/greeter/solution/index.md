---
title: 'Risinājums: Apgriezts vārds'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Metode `reversed` iegūst objekta paša `text` caur tā piekļuves metodi, `$.text`. Pēc tam tā izsauc uz tā iebūvēto `flip`, kas apgriež virkni otrādi.

1. Metode tiek izsaukta tieši uz jaunā `Word` objekta. Objektā nekas netiek saglabāts atpakaļ. `reversed` vienkārši aprēķina jaunu vērtību no atribūta un atgriež to.

1. Ievērojiet, ka klases iekšā jums nevajag piekļuves metodi. Jūs varat nolasīt mainīgo tieši:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
