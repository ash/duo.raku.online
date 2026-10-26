---
title: 'Solutio: Ordinem cogere'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
say 2 ** (3 + 1);
```

🦋 Inveni codicem fontem in archivo [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Exitus

```
16
```

## Commentarii

1. Sine parenthesibus `**` fortior est quam `+`. Tum `(2 ** 3) + 1 = 9` accipis.

1. Parentheses additioni altiorem praecedentiam dant. Ergo Raku `3 + 1` primum computat. Expressio fit `2 ** 4`, et hoc est `16`. Cum parenthesibus semper praecedentiam solitam mutare potes.

{% include nav.html %}
