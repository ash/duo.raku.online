---
title: 'Risinājums: END secība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Abi `END` fāzeri izpildās pēc galvenā koda. Tāpēc programma vispirms izdrukā `body`.

1. Vairāki `END` fāzeri izpildās secībā “pēdējais iekšā, pirmais ārā”. `second END` kodā ir vēlāk. Bet tas izpildās pirms `first END`. Tas ir kā tīrīšana īstās programmās. Parasti vispirms jāatceļ jaunākais iestatījums.

{% include nav.html %}
