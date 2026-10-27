---
title: 'Oplossing: Zacht omgekeerde'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Je kunt de broncode vinden in het bestand [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Uitvoer

```
0.25
undefined
```

## Opmerkingen

1. `reciprocal(4)` werkt gewoon. Het geeft `1 / 4` terug. Dat is `0.25`.

1. `reciprocal(0)` roept `fail` aan. Dus geeft het een `Failure` terug. Een `Failure` is een ongedefinieerde waarde met een fout erin. De operator `//` kijkt naar zijn linkerkant. Als de linkerkant ongedefinieerd is, geeft `//` zijn rechterkant terug. Dus krijgen we de terugvalwaarde, `undefined`.

1. `//` gebruiken telt als het afhandelen van de mislukking. `//` controleert alleen of de waarde gedefinieerd is. Hij gebruikt de waarde niet. Dus blijft de `Failure` zacht. Raku werpt hem nooit als echte exceptie.

{% include nav.html %}
