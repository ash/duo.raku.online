---
title: Pārāk liels
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Definējiet savu izņēmuma klasi `TooBig`. Tā manto no `Exception`, un tai ir divi atribūti, `value` un `limit`. Tās metodei `message` jāatgriež `Value <value> exceeds the limit of <limit>`.

Pēc tam palaidiet ciklu pāri vērtībām `30`, `99` un `60` ar robežu `50`. Katrai vērtībai izmetiet `TooBig` tikai tad, ja vērtība ir virs robežas. Izmantojiet fāzeri `CATCH` ar `when TooBig`, kas izdrukā paziņojumu **un** otru rindu. Šajā rindā tas tieši nolasa izņēmuma atribūtu `limit`. Tas izdrukā `Try a value up to <limit>.`. Vērtībai robežās vienkārši jāziņo, ka viss ir kārtībā.

Tas parāda, ka izņēmumu izraisa tikai neveiksmīgie skaitļi. Pārējie skaitļi iziet tieši cauri, un cikls abos gadījumos turpinās.

## Piemērs

Programma izdrukā:

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
