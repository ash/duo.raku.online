---
title: Gebruik van `elsif`
---

{% include menu.html %}

Tot nu toe hebben we `if` en `else` geleerd. Maar wat als je een keten van tests wilt maken? Raku heeft minstens twee manieren om dat te doen. Eigenlijk zijn er nog meer.

Eén manier is om een keten van `if`-, `elsif`- en `else`-blokken te gebruiken. Let op hoe je `elsif` spelt. Het is niet `elseif`, en ook niet `else if`.

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

Dit programma heeft drie takken en drie tests, na elkaar. Zodra een van de voorwaarden `True` is, draait het bijbehorende codeblok. Als geen van de controles `True` is, draait het `else`-blok.

Hier zijn een paar testruns van het programma. Elk blok draait in een van die runs:

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

Een andere manier is om het paar [`given` en `when`](/nl/advanced/given-when) te gebruiken, dat we later zullen leren.

{% include nav.html %}
