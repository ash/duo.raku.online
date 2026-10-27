---
title: Apstrādājiet un turpiniet
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Palaidiet ciklu pāri trim elementiem: `ok`, `bad` un `ok`. Katram elementam izpildiet bloku. Bloks izdrukā `processed <elements>`. Bet elementam `bad` tas izpilda `die 'boom'`. Ielieciet bloka iekšā fāzeri `CATCH`. Tas noķer kļūdu. Elementam ar kļūdu tas izdrukā `skipped (<elements>): <paziņojums>`. Tad cikls turpina ar nākamo elementu. Tas neapstājas.

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
