---
title: 'Risinājums: Vairumtirdzniecības cenas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
multi sub price(Int $qty where $qty >= 10) { say 'bulk price' }
multi sub price(Int $qty)                  { say 'normal price' }

price(3);
price(25);
```

🦋 Šīs programmas pirmkodu var atrast failā [bulk-pricing.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/bulk-pricing.raku).

## Izvade

```
normal price
bulk price
```

## Komentāri

1. Pirmajam kandidātam ir `where` klauzula. Tā pieņem tikai daudzumus no 10 un vairāk. Tāpēc izsaukums `price(25)` nonāk pie šī kandidāta.

1. Otrajam kandidātam nav nosacījuma. Tas pieņem visus pārējos izsaukumus. Tāpēc `price(3)` nonāk tur.

{% include nav.html %}
