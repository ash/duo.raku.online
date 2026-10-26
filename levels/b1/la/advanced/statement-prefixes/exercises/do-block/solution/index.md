---
title: 'Solutio: Valor bloci do'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Nudum `if` sententia est, et valore eius uti non potes. Praefixum `do` totum `if`/`else` in expressionem convertit.

1. `7 > 5` verum est, itaque expressio `'big'` dat, et hic valor ad `$label` assignatur. Idem artificium cum `do given` et `do for` operatur.

1. Unci curvi `{ }` non sunt optionales. In Raku `if` semper copiam accipit. Itaque ramos in `if 7 > 5 'big' else 'small'` breviare non potes. Compilatio cum errore *Missing block* deficit.

{% include nav.html %}
