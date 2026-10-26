---
title: Anonieme subroutines
translations_gpt: Anonieme subroutines
---

{% include menu.html %}

Een subroutine hoeft geen naam te hebben. Een _anonieme_ subroutine ziet er net zo uit als een gewone, alleen zonder naam. Meestal wordt hij in een variabele opgeslagen, zodat je hem later kunt aanroepen.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

De variabele `$double` bevat de subroutine. Dan roept `$double(5)` hem aan met het argument `5`.

## Pointy blocks

Raku heeft een kortere manier om hetzelfde te schrijven: het _pointy block_. De pijl `->` staat voor de parameters. Je hebt het woord `sub` niet nodig, en ook geen haakjes eromheen:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Een kleine anonieme subroutine wordt meestal zo geschreven.

## De `&`-sigil

Misschien wil je de subroutine bij naam aanroepen, niet via een `$`-variabele. Declareer de variabele in dat geval met de `&`-sigil. Dan kun je hem zonder sigil aanroepen, net als een gewone subroutine:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Doorgeven aan een andere functie

Je hoeft een anonieme subroutine helemaal niet in een variabele op te slaan. Het is gewoon een waarde. Dus kun je hem direct doorgeven aan een functie die er een nodig heeft. Voorbeelden zijn `map`, `grep` of `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Hier is het pointy block de anonieme subroutine. `map` roept het een keer aan voor elk element. Eigenlijk doe je dit al die tijd al. Je hebt al veel `{ ... }`-blokken en `-> $x { ... }` aan `map` en `grep` doorgegeven. Elk daarvan is een kleine anonieme subroutine. Je schrijft hem precies waar je hem nodig hebt, in plaats van hem eerst een naam te geven.

{% include nav.html %}
