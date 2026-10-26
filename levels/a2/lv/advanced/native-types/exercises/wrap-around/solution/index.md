---
title: 'Risinājums: Apgriešanās'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my uint8 $u = 250;
$u += 10;
say $u;

my uint8 $v = 0;
$v--;
say $v;
```

🦋 Programmas pirmkodu var atrast failā [wrap-around.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/wrap-around.raku).

## Izvade

```
4
255
```

## Komentāri

1. `uint8` vērtības ir no `0` līdz `255`. Tās ir 256 dažādas vērtības. Patiesībā visa aritmētika ar to notiek pēc moduļa 256. Rezultāts ir atlikums pēc dalīšanas ar 256.

1. Parasti `250 + 10` ir `260`. Bet `260` neietilpst. Tāpēc vērtība apgriežas. Tā sāk atkal no apakšas un nonāk pie `260 - 256 = 4`. Pārplūšana nav tikai viens solis pāri augšai. Jebkurš rezultāts ārpus diapazona atgriežas diapazonā.

1. Arī otrā virzienā notiek pārplūšana. Neparakstītā tipā `0` samazināšana nevar dot `-1`. Tāpēc vērtība apgriežas uz lielāko vērtību, `255`.

{% include nav.html %}
