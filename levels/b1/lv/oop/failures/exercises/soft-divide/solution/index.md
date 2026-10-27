---
title: 'Risinājums: Mīkstais apgrieztais skaitlis'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Atrodiet programmu failā [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Izvade

```
0.25
undefined
```

## Komentāri

1. `reciprocal(4)` darbojas kā parasti un atgriež `1 / 4`, tas ir, `0.25`.

1. `reciprocal(0)` izsauc `fail`, tāpēc tā atgriež `Failure`, kas ir nedefinēts. Operators `//` atgriež savu labo pusi ikreiz, kad tā kreisā puse ir nedefinēta. Tāpēc mēs saņemam rezerves vērtību `undefined`.

1. `//` lietošana skaitās neveiksmes apstrāde. Tas pārbauda, vai vērtība ir definēta, bet vērtību neizmanto. Tāpēc `Failure` paliek mīksts un nekad netiek izmests kā īsts izņēmums.

{% include nav.html %}
