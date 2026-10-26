---
title: 'Risinājums: Apgriešanās'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `uint8` vērtības ir no `0` līdz `255`, tātad tam ir 256 dažādas vērtības. Praktiski aritmētika ar to notiek pēc moduļa 256.

1. `250 + 10` būtu `260`, kas neietilpst. Tāpēc vērtība apgriežas un nonāk `260 - 256 = 4` virs apakšējās robežas. Tas nozīmē, ka pārplūšana nav tikai viens solis pāri augšējai robežai. Jebkurš rezultāts ārpus diapazona tiek atgriezts atpakaļ tajā.

1. Arī kustība otrā virzienā izraisa pārplūšanu. Neparakstītā tipā, samazinot `0`, nevar iegūt `-1`. Tāpēc tas apgriežas uz maksimālo vērtību, `255`.

{% include nav.html %}
