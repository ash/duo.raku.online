---
title: 'Risinājums: Mīkstais apgrieztais skaitlis'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `reciprocal(4)` darbojas kā parasti. Tā atgriež `1 / 4`. Tas ir `0.25`.

1. `reciprocal(0)` izsauc `fail`. Tāpēc tā atgriež `Failure`. `Failure` ir nedefinēta vērtība ar kļūdu iekšā. Operators `//` skatās uz savu kreiso pusi. Ja kreisā puse ir nedefinēta, `//` atgriež savu labo pusi. Tāpēc mēs saņemam rezerves vērtību, `undefined`.

1. `//` lietošana skaitās neveiksmes apstrāde. `//` tikai pārbauda, vai vērtība ir definēta. Tas neizmanto vērtību. Tāpēc `Failure` paliek mīksts. Raku nekad neizmet to kā īstu izņēmumu.

{% include nav.html %}
