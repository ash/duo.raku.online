---
title: 'Solutio: Solum integri'
---

{% include menu.html %}

Hoc modo opus solvere potes.

## Codex

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Inveni codicem fontem in archivo [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Exitus

```
250
(Int)
```

## Commentarii

1. Restrictio typi `Int` in `my Int $cars` est regula pro continenti. Continens valores non accipit qui numeri integri non sunt. `250.7` directe assignare non potes. Hic valor est `Rat`. Raku errorem tempore compilationis dat, antequam programma currit.

1. Programma `.Int` in valore rationali `250.7` vocat. Hoc eum in numerum integrum `250` convertit. Methodus solum partem post punctum decimale abicit. Novus valor continenti convenit. Nota: hoc non idem est ac rotundatio.

1. Pseudo-methodus `.WHAT` typum valoris servati ostendit. Typus est `Int`.

{% include nav.html %}
