---
title: Ja skaitlis ir robežās
---

{% include menu.html %}

## Problēma

Uzrakstiet programmu. Tā prasa lietotājam trīs skaitļus: `$begin`, `$end` un `$n`. Tad tā pārbauda, vai `$n` ir diapazonā `[$begin, $end)`. Šajā diapazonā ir `$begin`, bet nav `$end`. Programma izdrukā `True` vai `False`.

Skaitļi atbilst šim nosacījumam: `$begin < $end + 1`. Par to jūs varat būt droši. Nepievienojiet kodu, lai to pārbaudītu.

## Piemērs

Šeit ir iespējamā programmas izvade abos gadījumos:

```console
$ raku number-in-limits.raku
No (ieskaitot): 10
Līdz (izslēdzot): 20
Kāds ir skaitlis? 15
True

$ raku number-in-limits.raku
No (ieskaitot): 10
Līdz (izslēdzot): 20
Kāds ir skaitlis? 30
False
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
