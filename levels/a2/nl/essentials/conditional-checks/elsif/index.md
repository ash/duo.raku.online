---
title: Gebruik van `elsif`
---

{% include menu.html %}

Nu ken je `if` en `else`. Maar wat als je veel tests na elkaar nodig hebt? Raku heeft hiervoor minstens twee manieren. Eigenlijk heeft het er nog meer.

Eén manier is een keten van blokken: `if`, `elsif` en `else`. Kijk hoe we `elsif` schrijven. Het is niet `elseif`. Het is ook niet `else if`.

```raku
my $x = prompt 'Voer het nummer in: ';
if $x > 100 {
    say "$x is groter dan 100.";
}
elsif $x > 50 {
    say "$x is groter dan 50.";
}
elsif $x > 25 {
    say "$x is groter dan 25.";
}
else {
    say "$x is 25 of kleiner.";
}
```

Dit programma heeft drie takken. Het heeft drie tests, na elkaar. Zodra één voorwaarde `True` is, voert Raku zijn codeblok uit. Als geen enkele test `True` is, voert Raku het `else`-blok uit.

Hier zijn een paar testruns van het programma. Samen gebruiken ze alle blokken:

```console
$ raku t.raku
Voer het nummer in: 120
120 is groter dan 100.

$ raku t.raku
Voer het nummer in: 75      
75 is groter dan 50.

$ raku t.raku
Voer het nummer in: 30
30 is groter dan 25.

$ raku t.raku
Voer het nummer in: 10
10 is 25 of kleiner.
```

Een andere manier is het paar [`given` en `when`](/nl/advanced/given-when). Dat leren we later.

{% include nav.html %}
