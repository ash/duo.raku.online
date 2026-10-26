---
title: Conspectus operatorum
translations_gpt:
---

{% include menu.html %}

Expressio plures operatores habere potest. Tum Raku ordinem decernere debet. Quis operator primus venit? Duae regulae hoc decernunt: _praecedentia_ et _associativitas_.

## Praecedentia

Praecedentia decernit quis operator fortior sit. Operator fortior operandos suos primus capit. Multiplicatio altiorem praecedentiam quam additio habet. Ergo multiplicatio primum fit:

```raku
say 2 + 3 * 4; # 14
```

Raku expressionem legit ut `2 + (3 * 4)`. Eventus est `14`, non `20`. Semper parentheses addere potes. Eae alium ordinem dant:

```raku
say (2 + 3) * 4; # 20
```

## Associativitas

Quidam operatores _eandem_ praecedentiam habent. Tum associativitas ordinem decernit. Subtractio sinistro-associativa est. Ergo Raku eam a sinistra congregat:

```raku
say 8 - 3 - 2; # 3
```

Hoc est `(8 - 3) - 2`. Eventus est `3`. Sed elevatio ad potestatem, operator `**`, dextro-associativa est:

```raku
say 2 ** 3 ** 2; # 512
```

Hic Raku expressionem congregat ut `2 ** (3 ** 2)`. Hoc est `2 ** 9`, et eventus est `512`.

## Comparationes catenatae

Operatores comparationis _catenare_ potes. Tum alius post alium venit. Talem codicem facile legis. Operatur sicut in mathematica:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Raku valorem medium cum ambobus valoribus vicinis comparat. `1 < 2 < 3` verum est. Nam `1 < 2` verum est, et `2 < 3` quoque verum est.

{% include nav.html %}
