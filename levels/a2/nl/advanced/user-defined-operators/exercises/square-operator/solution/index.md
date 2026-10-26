---
title: 'Solution: Een kwadraatoperator'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Je kunt de broncode vinden in het bestand [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Uitvoer

```
25
```

## Opmerkingen

1. We declareren de operator als `postfix:<²>`. Zijn symbool is een kleine, hoge twee. Je schrijft het na zijn operand, zoals in `5²`.

1. De body verheft de operand tot de tweede macht. Zo geeft `5²` het getal `25`. Je mag gewoon een Unicode-symbool gebruiken. Het kan er net zo uitzien als in de wiskunde.

{% include nav.html %}
