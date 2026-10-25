---
title: Getypte parameters
---

{% include menu.html %}

In Raku kan een parameter van een functie een type hebben. Dan neemt de parameter alleen waarden van dit type aan. Dit lijkt heel erg op [getypte variabelen](/nl/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Nu moeten de argumenten van de functie gehele getallen zijn.

```raku
say add(10, 20);
# say add(pi, e); # Fout
```

Je kunt alleen `Int`-waarden doorgeven. Elk ander type geeft een compile-tijd fout. Zo'n fout komt al voordat het programma draait.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Let op: Raku zet de types hier niet voor je om. In andere gevallen is zo'n omzetting wel mogelijk.

```raku
# say add('3', '4'); # Fout
say '3' + '4'; # OK en is 7
```

%%tipblock
## Is het een compile-tijd fout?
Kijk naar het begin van het foutbericht. Is het `===SORRY!=== Error while compiling`? Dan gebeurde de fout op compile-tijd.
%%/tipblock

{% include nav.html %}
