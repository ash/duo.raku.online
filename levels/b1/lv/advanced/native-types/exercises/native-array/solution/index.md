---
title: 'Risinājums: Natīvais masīvs'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my uint8 @bytes = 100, 200, 255;
say @bytes.sum;
```

🦋 Programmas pirmkodu var atrast failā [native-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-array.raku).

## Izvade

```
555
```

## Komentāri

1. Natīvais tips ar fiksētu izmēru `uint8` atrodas pirms `@` masīva. Tas deklarē masīvu, kurā katrs elements ir viens neparakstīts baits. Tas aizņem maz atmiņas, un tas ir labi binārajiem datiem.

1. Apgriešanās robeža `0..255` attiecas uz katru *elementu*, bet ne uz to summu. `.sum` iesaiņo kopsummu parastā `Int`. Tāpēc `100 + 200 + 255` dod pilnu `555`.

{% include nav.html %}
