---
title: 'Risinājums: Skaitītājs'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Atribūts ir deklarēts ar `is rw`, tāpēc tā piekļuves metode atgriež rakstāmu konteineru. `= 0` dod tam sākuma vērtību. Pirmais `say` parāda, ka jauns skaitītājs tiešām sākas ar šo noklusējumu, `0`.

1. Piekļuves metode ir rakstāma, tāpēc `++` var to palielināt. Tas darbojas tā, kā jūs gaidītu.

{% include nav.html %}
