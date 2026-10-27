---
title: Apstrādājiet un turpiniet
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Palaidiet ciklu pāri trim elementiem `ok`, `bad` un `ok`. Katram elementam izpildiet bloku, kas izdrukā `processed <elements>`. Bet, kad elements ir `bad`, blokam jāizpilda `die 'boom'`. Ielieciet bloka iekšā fāzeri `CATCH`. Tam jāziņo par elementu ar kļūdu šādi: `skipped (<elements>): <paziņojums>`. Tad cikls turpinās ar nākamo elementu, nevis apstājas.

## Piemērs

Programma izdrukā:

```
processed ok
skipped (bad): boom
processed ok
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
