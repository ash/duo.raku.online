---
title: 'Risinājums: END secība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Šīs programmas pirmkodu var atrast failā [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Izvade

```
body
second END
first END
```

## Komentāri

1. Abi `END` fāzeri izpildās pēc galvenā koda, tāpēc programma vispirms izdrukā `body`.

1. Vairāki `END` fāzeri izpildās pēc principa “pēdējais iekšā, pirmais ārā”. `second END` ir deklarēts vēlāk, tāpēc tas izpildās pirms `first END`. Tas ir līdzīgi tīrīšanai, kurai parasti vispirms jāatceļ jaunākais iestatījums.

{% include nav.html %}
