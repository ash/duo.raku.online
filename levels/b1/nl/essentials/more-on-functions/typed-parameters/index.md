---
title: Getypte parameters
---

{% include menu.html %}

In Raku kun je functieparameters tot één type beperken. Dit lijkt heel erg op [getypte variabelen](/nl/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Nu eist de functie dat de argumenten gehele getallen zijn.

```raku
say add(10, 20);
# say add(pi, e); # Fout
```

Als je een waarde van een ander type dan `Int` doorgeeft, krijg je een compile-tijd fout.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Let op dat Raku de types hier niet automatisch omzet. In andere gevallen kan Raku zo'n omzetting wel doen.

```raku
# say add('3', '4'); # Fout
say '3' + '4'; # OK en is 7
```

%%tipblock
## Hoe weet je of het een compile-tijd fout is
Als het foutbericht begint met `===SORRY!=== Error while compiling`, dan gebeurde de fout op compile-tijd.
%%/tipblock

{% include nav.html %}
