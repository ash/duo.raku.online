---
title: 'Risinājums: Skaitīt uz augšu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $n = 9;

say $n++;
say $n;
```

🦋 Šīs programmas pirmkodu var atrast failā [count-up.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/count-up.raku).

## Izvade

```
9
10
```

## Komentāri

1. `++` ir postfiksa operators. Tas atrodas aiz sava operanda. Izteiksmē `$n++` vispirms dod *veco* vērtību, `9`. To izdrukā `say`. Tikai pēc tam `++` pieskaita mainīgajam 1.

1. Otrā rindiņa parāda, ka `$n` tagad ir `10`. Prefiksa forma `++$n` darbojas citādi. Tā vispirms pieskaita 1 un tad atgriež `10`.

{% include nav.html %}
