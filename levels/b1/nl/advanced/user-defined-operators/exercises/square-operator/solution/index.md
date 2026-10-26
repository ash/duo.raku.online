---
title: 'Solution: Een kwadraatoperator'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De operator is gedeclareerd als `postfix:<²>`. Zijn symbool, de superscript twee, staat dus na zijn operand, zoals in `5²`.

1. De body verheft de operand tot de tweede macht, dus `5²` geeft `25`. Niets houdt je tegen om een Unicode-symbool te gebruiken dat lijkt op de gewone wiskundige notatie.

{% include nav.html %}
