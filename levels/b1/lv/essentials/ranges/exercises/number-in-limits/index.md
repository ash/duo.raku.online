---
title: Ja skaitlis ir robežās
---

{% include menu.html %}

## Problēma

Uzrakstiet programmu, kas lūdz lietotāju ievadīt trīs skaitļus: `$begin`, `$end` un `$n`. Tā izdrukā `True`, ja `$n` ir diapazonā `[$begin, $end)`, vai `False`, ja nav. Šis diapazons ietver `$begin`, bet neietver `$end`.

Jūs varat pieņemt, ka ievadītie skaitļi atbilst nosacījumam `$begin < $end + 1`. Bet nepievienojiet kodu, lai to pārbaudītu.

## Piemērs

Zemāk jūs varat redzēt iespējamo programmas izvadi abiem gadījumiem:

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
