---
title: 'Solutio: Valor bloci do'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Inveni codicem fontem in archivo [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Exitus

```
big
```

## Commentarii

1. Nudum `if` sententia est. Nullum valorem habet quo uti potes. Praefixum `do` totum `if`/`else` expressionem facit.

1. `7 > 5` verum est. Itaque valor expressionis est `'big'`. Programma eum ad `$label` assignat. Idem artificium cum `do given` et `do for` operatur.

1. Uncos curvos `{ }` scribere debes. In Raku `if` semper copiam requirit. Itaque ramos breviores facere non potes, sicut `if 7 > 5 'big' else 'small'`. Hic codex non compilatur. Error est *Missing block*.

{% include nav.html %}
