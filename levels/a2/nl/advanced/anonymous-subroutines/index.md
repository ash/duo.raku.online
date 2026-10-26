---
title: Anonieme subroutines
translations_gpt: Anonieme subroutines
---

{% include menu.html %}

Een subroutine heeft geen naam nodig. Een subroutine zonder naam is _anoniem_. Je schrijft hem als een gewone subroutine, alleen zonder naam. Meestal bewaar je hem in een variabele. Dan kun je hem later aanroepen.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

In de variabele `$double` zit de subroutine. `$double(5)` roept de subroutine aan met het argument `5`.

## Pointy blocks

Raku heeft een kortere manier om hetzelfde te schrijven. Dat is het _pointy block_. Het heeft een pijl, `->`, voor de parameters. Je hebt het woord `sub` niet nodig. Je hebt ook geen haakjes rond de parameters nodig:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Zo schrijven mensen meestal een kleine anonieme subroutine.

## De `&`-sigil

Misschien wil je bij de aanroep een naam, geen `$`-variabele. Maak de variabele dan met de `&`-sigil. Nu kun je hem zonder sigil aanroepen. Het werkt net als een gewone subroutine:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Aan een andere functie geven

Je hoeft een anonieme subroutine niet in een variabele te bewaren. Het is gewoon een waarde. Dus kun je hem direct aan een functie geven. Sommige functies hebben zo'n waarde nodig, bijvoorbeeld `map`, `grep` of `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Hier is het pointy block de anonieme subroutine. `map` roept het een keer aan voor elk element. Eigenlijk doe je dit al de hele tijd. Je geeft vaak een `{ ... }`-blok of `-> $x { ... }` aan `map` en `grep`. Elk daarvan is een kleine anonieme subroutine. Je schrijft hem precies waar je hem nodig hebt. Je geeft hem niet eerst een naam.

{% include nav.html %}
