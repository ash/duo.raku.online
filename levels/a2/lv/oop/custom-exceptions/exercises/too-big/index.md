---
title: Pārāk liels
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Izveidojiet savu izņēmuma klasi `TooBig`. Šī ir klase jūsu pašu kļūdām. Tā manto no `Exception`. Tai ir divi atribūti, `value` un `limit`. Tās metodei `message` jāatgriež `Value <value> exceeds the limit of <limit>`.

Tad palaidiet ciklu pāri vērtībām `30`, `99` un `60`. Robeža ir `50`. Izmetiet `TooBig` tikai tad, kad vērtība ir lielāka par robežu. Pievienojiet fāzeri `CATCH` ar `when TooBig`. Tas izdrukā paziņojumu **un** otru rindu. Šai rindai tas tieši nolasa izņēmuma atribūtu `limit`. Otrā rinda ir `Try a value up to <limit>.`. Vērtībai robežās vienkārši izdrukājiet, ka viss ir kārtībā.

Jūs redzat, ka izņēmumu saņem tikai neveiksmīgie skaitļi. Pārējie skaitļi iziet cauri bez problēmām. Abos gadījumos cikls turpinās.

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
