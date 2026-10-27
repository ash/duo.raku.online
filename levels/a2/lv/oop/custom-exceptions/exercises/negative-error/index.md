---
title: Negatīva skaitļa kļūda
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Izveidojiet savu izņēmuma klasi `Negative`. Šī ir klase jūsu pašu kļūdām. Tā manto no `Exception`. Tai ir atribūts `n`. Tās metode `message` atgriež `<n> is negative`.

Uzrakstiet apakšprogrammu `check($n)`. Ja tās arguments ir mazāks par nulli, tā izmet `Negative`. Šis `Negative` glabā `n`. Citādi apakšprogramma atgriež argumentu. Tad izsauciet `check(-5)` bloka iekšā. Pievienojiet fāzeri `CATCH` ar `when Negative`. Tas izdrukā izņēmuma paziņojumu.

Beigās, aiz bloka, izmetiet vēl vienu `Negative`. Tā `n` ir `-10`. Tur to nenoķer neviens `CATCH`. Tas parāda, kas tad notiek. Izņēmums beidz programmu.

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
