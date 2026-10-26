---
title: 'Soluzione: Una formula nella classe'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 Trova il programma nel file [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Output

```
314
```

## Commenti

1. Il metodo non usa nessun attributo. Lavora solo con il suo parametro `$r`. Così puoi chiamarlo sulla classe stessa. Non devi creare prima un oggetto.

1. `Geometry.circle-area(10)` chiama il metodo sull'oggetto di tipo. Passa `10` al metodo. Il risultato è `π * 10 * 10`. Dopo l'arrotondamento è `314`.

{% include nav.html %}
