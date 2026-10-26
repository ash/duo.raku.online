---
title: Conspectus operatorum
translations_gpt:
---

{% include menu.html %}

Cum expressio plures operatores habet, Raku decernere debet quo ordine eos adhibeat. Duae regulae hoc regunt: _praecedentia_ et _associativitas_.

## Praecedentia

Praecedentia decernit quis operator fortior sit, id est, quis arctius liget. Multiplicatio altiorem praecedentiam quam additio habet, ergo primum fit:

```raku
say 2 + 3 * 4; # 14
```

Raku expressionem legit ut `2 + (3 * 4)`, ergo eventus est `14`, non `20`. Semper parenthesibus uti potes ut alium ordinem accipias:

```raku
say (2 + 3) * 4; # 20
```

## Associativitas

Associativitas ordinem decernit cum operatores _eandem_ praecedentiam habent. Subtractio sinistro-associativa est, id est a sinistra congregat:

```raku
say 8 - 3 - 2; # 3
```

Hoc est `(8 - 3) - 2`, quod `3` dat. Elevatio ad potestatem autem dextro-associativa est:

```raku
say 2 ** 3 ** 2; # 512
```

Hic expressio congregat ut `2 ** (3 ** 2)`. Id est `2 ** 9`, quod `512` dat.

## Comparationes catenatae

Operatores comparationis _catenari_ possunt. Hoc naturaliter legitur et facit quod ex mathematica exspectas:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Valor medius cum valoribus ab utraque parte comparatur. Ergo `1 < 2 < 3` verum est, quia et `1 < 2` et `2 < 3` vera sunt.

{% include nav.html %}
