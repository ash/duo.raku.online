---
title: 'Solution: De native standaardwaarde'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Een native `num` kan niet ongedefinieerd zijn. Daarom begint hij, net als een native `int`, op `0` en niet op `(Num)`.

1. Een native `str` begint als de lege string. Daarom staat er in de uitvoer niets tussen de haken. Geen van de native typen bevat ooit een ongedefinieerde waarde.

1. De typenamen zijn hier heel belangrijk. Als je ze weghaalt en `my $n; my $s;` schrijft, worden de variabelen gewone containers. Ze beginnen *ongedefinieerd* (`Any`). Dan drukt `say $n` `(Any)` af. Het interpoleren van de ongedefinieerde `$s` geeft ook een waarschuwing: *"Use of uninitialized value ... in string context"*. Alleen de native typen `num` en `str` geven de standaardwaarden `0` en de lege string.

{% include nav.html %}
