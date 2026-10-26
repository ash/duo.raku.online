---
title: 'Risinājums: Skaitītājs'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Atrodiet programmu failā [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Izvade

```
0
5
```

## Komentāri

1. Atribūtam ir `is rw`. Tāpēc tā piekļuves metode atgriež konteineru, kurā var rakstīt. `= 0` dod atribūtam sākuma vērtību. Pirmais `say` pārbauda jaunu skaitītāju. Tas tiešām sākas ar noklusēto vērtību, `0`.

1. Jūs varat rakstīt caur piekļuves metodi. Tāpēc `++` darbojas, kā jūs gaidāt. Tas pieskaita skaitam 1.

{% include nav.html %}
