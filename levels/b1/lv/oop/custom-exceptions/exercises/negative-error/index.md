---
title: Negatīva skaitļa kļūda
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Definējiet savu izņēmuma klasi ar nosaukumu `Negative`. Tā manto no `Exception`, un tai ir atribūts `n`. Tās metode `message` atgriež `<n> is negative`.

Uzrakstiet apakšprogrammu `check($n)`. Kad tās arguments ir zem nulles, tā izmet `Negative`, kas nes līdzi šo `n`. Citādi tā atgriež argumentu. Pēc tam blokā izsauciet `check(-5)`. Izmantojiet fāzeri `CATCH` ar `when Negative`, lai izdrukātu izņēmuma paziņojumu.

Visbeidzot aiz bloka izmetiet vēl vienu `Negative`, kura `n` ir `-10`. Šo vietu nesargā neviens `CATCH`. Tas parāda, ka šāds izņēmums beidz programmu.

## Piemērs

Programma izdrukā:

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
