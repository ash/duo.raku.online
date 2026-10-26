---
title: Meervoudige dispatch
---

{% include menu.html %}

In het onderdeel Essentials maakte je kennis met [_multi-functies_](/nl/essentials/more-on-functions/multi-functions). Dat zijn meerdere subroutines met dezelfde naam. Raku kiest de juiste door naar de typen van de argumenten te kijken. Dit heet _multiple dispatch_.

Tot nu toe koos Raku op basis van het _type_ van de argumenten. Met een `where`-clausule kun je verder gaan en ook op de _waarde_ kiezen. Je schrijft de clausule na een parameter, en die bevat een voorwaarde. Het argument moet aan deze voorwaarde voldoen, anders wordt die kandidaat niet gekozen:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Elke aanroep voert de kandidaat uit met een voorwaarde die waar is voor de gegeven waarde:

```
-5 is negative
0 is zero
7 is positive
```

Als je alleen naar de typen kijkt, hebben alle drie de kandidaten dezelfde signatuur: één `Int`. Zonder de `where`-clausules zouden ze dus botsen. De voorwaarden maken ze van elkaar verschillend.

## Een basisgeval voor recursie

`where` wordt vaak gebruikt voor het stoppunt van een recursie. Dit punt krijgt een eigen kandidaat. Hier is de faculteit opnieuw, nu als twee multi-subs:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

De eerste kandidaat behandelt het basisgeval, als `$n` gelijk is aan `1` of minder. Hij geeft gewoon `1` terug. Elke andere waarde gaat naar de tweede kandidaat. Die roept `fact` opnieuw aan met een kleiner getal. Er staat geen `if` in de functie. De dispatcher kiest tussen het basisgeval en de recursieve stap.

{% include nav.html %}
