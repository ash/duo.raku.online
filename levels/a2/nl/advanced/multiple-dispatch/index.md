---
title: Meervoudige dispatch
---

{% include menu.html %}

In het onderdeel Essentials heb je [_multi-functies_](/nl/essentials/more-on-functions/multi-functions) leren kennen. Dat zijn meerdere subroutines met dezelfde naam. Raku kijkt naar de typen van de argumenten. Dan kiest het de juiste subroutine. Dit heet _multiple dispatch_.

Tot nu toe koos Raku op het _type_ van de argumenten. Met een `where`-clausule kun je meer doen. Raku kan ook op de _waarde_ kiezen. Je schrijft `where` na een parameter. Daarin staat een voorwaarde. Elke variant van de functie heet een kandidaat. Raku kiest een kandidaat alleen als zijn voorwaarde waar is voor het argument:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Elke aanroep gaat naar de kandidaat met een voorwaarde die waar is voor die waarde:

```
-5 is negative
0 is zero
7 is positive
```

Kijk naar de typen. Alle drie de kandidaten hebben dezelfde signatuur: één `Int`. Zonder de `where`-clausules botsen ze. Raku kan er dan niet tussen kiezen. De voorwaarden maken ze verschillend.

## Een recursie stoppen

Mensen gebruiken `where` vaak bij recursie. Bij recursie roept een functie zichzelf aan. Op een bepaald moment moet die stoppen. Je kunt dit stoppunt in een aparte kandidaat zetten. Hier is de faculteit weer. Nu zijn het twee multi-subs:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

De eerste kandidaat is het basisgeval. Hier stopt de recursie. In dit geval is `$n` gelijk aan `1` of minder. Deze kandidaat geeft gewoon `1` terug. Alle andere waarden gaan naar de tweede kandidaat. Die roept `fact` weer aan met een kleiner getal. Er staat geen `if` in de functie. De dispatcher kiest tussen het basisgeval en de recursieve stap. De dispatcher is het deel van Raku dat een kandidaat kiest.

{% include nav.html %}
