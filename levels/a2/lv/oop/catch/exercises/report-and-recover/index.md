---
title: Ziņojiet un atgūstieties
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Parādiet, kā `CATCH` palīdz programmai atkopties pēc kļūdas. Programma neapstājas. Tā turpina darbu ar drošu noklusējuma vērtību.

Pirms bloka izveidojiet mainīgo `$timeout`. Dodiet tam noklusējuma vērtību `30`. Bloka iekšā izpildiet `die 'config missing'`. Nākamajā rindā mēģiniet piešķirt `$timeout` vērtību `60`. Programma nekad nenonāk līdz šai rindai. Pievienojiet fāzeri `CATCH` ar bloku `default`. Tas izdrukā `warning: <paziņojums>; keeping default`. Aiz bloka izdrukājiet `timeout is <timeout> seconds`.

## Piemērs

Programma izdrukā:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
