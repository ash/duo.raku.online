---
title: 'Solution: De native standaardwaarde'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my num $n;
my str $s;

say $n;
say "[$s]";
```

🦋 Je kunt de broncode vinden in het bestand [native-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-default.raku).

## Uitvoer

```
0
[]
```

## Opmerkingen

1. Een native `num` kan niet ongedefinieerd zijn. Daarom begint hij op `0`, net als een native `int`. Hij begint niet als `(Num)`.

1. Een native `str` begint als een lege string. Daarom staat er niets tussen de haken. Een native type bevat nooit een ongedefinieerde waarde.

1. Hier zijn de typen heel belangrijk. Probeer ze eens weg te halen. Schrijf in plaats daarvan `my $n; my $s;`. Nu zijn de variabelen gewone containers. In het begin zijn ze *ongedefinieerd*: ze bevatten `Any`. Dan drukt `say $n` `(Any)` af. De string interpoleert `$s`, maar `$s` is ongedefinieerd. Daarom geeft Raku een waarschuwing: *"Use of uninitialized value ... in string context"*. Alleen de native typen `num` en `str` geven de beginwaarden. Dat zijn `0` en de lege string.

{% include nav.html %}
