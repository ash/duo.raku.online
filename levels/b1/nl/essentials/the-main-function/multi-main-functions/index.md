---
title: Meerdere `MAIN` functies
---

{% include menu.html %}

Net als elke andere functie in Raku kan de `MAIN`-functie `multi`-varianten hebben. Daarmee kan het programma op elk geval op een eigen manier reageren. De gevallen kunnen verschillen in het aantal invoerparameters of in hun types.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Als er maar één argument is, verdubbelt dit programma het. Als er een tweede argument is, telt het programma de twee bij elkaar op:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
