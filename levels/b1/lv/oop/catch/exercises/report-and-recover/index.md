---
title: Ziņojiet un atgūstieties
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Parādiet, kā programma var atkopties ar `CATCH` palīdzību. Tā turpina darbu ar saprātīgu noklusējuma vērtību.

Pirms bloka deklarējiet mainīgo `$timeout` ar noklusējuma vērtību `30`. Bloka iekšā izpildiet `die 'config missing'`. Pēc tam rindā, kas nekad neizpildās, mēģiniet piešķirt `$timeout` vērtību `60`. Izmantojiet fāzeri `CATCH`, kura bloks `default` izdrukā `warning: <paziņojums>; keeping default`. Aiz bloka izdrukājiet `timeout is <timeout> seconds`.

## Piemērs

Programma izdrukā:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
