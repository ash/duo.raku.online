---
title: 'Risinājums: Skaitīt uz augšu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `++` ir postfiksa operators, kas nozīmē, ka tas atrodas aiz sava operanda. Izteiksmē `$n++` vispirms dod *veco* vērtību `9`. Tieši to izdrukā `say`. Tikai pēc tam tas palielina mainīgo.

1. Otrā rindiņa parāda, ka `$n` patiešām ir kļuvis par `10`. Prefiksa forma `++$n` vispirms pieskaitītu vienu un tad atgrieztu `10`.

{% include nav.html %}
