---
title: 'Risinājums: Natīvais masīvs'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Uzrakstiet natīvo tipu ar fiksētu izmēru `uint8` pirms `@` masīva. Tad Raku glabā katru elementu vienā baitā. Šis baits ir neparakstīts: tam nav mīnusa zīmes. Šāds masīvs aizņem maz atmiņas. Tas ir labi binārajiem datiem.

1. Katram *elementam* ir robeža, `0..255`. Aiz šīs robežas vērtības apgriežas. Bet elementu summai šīs robežas nav. `.sum` ieliek kopsummu parastā `Int`. Tāpēc `100 + 200 + 255` dod pilnu `555`.

{% include nav.html %}
