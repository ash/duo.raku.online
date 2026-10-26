---
title: Sakopt atstājot
translations_gpt:
---

{% include menu.html %}

## Uzdevums

`LEAVE` labākā īpašība ir šāda. Tas izpildās, *lai kā* programma atstātu bloku. Tas izpildās arī tad, ja `return` notiek pirms laika.

Uzrakstiet apakšprogrammu `work`. Tās ķermenis sākas ar fāzeri `LEAVE`. Fāzeris izdrukā `Cleanup`. Pēc tam, joprojām apakšprogrammā, izdrukājiet `Working`. Tad uzreiz izmantojiet `return`. Aiz `return` ielieciet rindu `say 'never reached'`. Izsauciet apakšprogrammu. Šis agrais `return` izlaiž pēdējo rindu. Bet programma tomēr izdrukā `Cleanup`.

## Piemērs

Programma izdrukā:

```
Working
Cleanup
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
