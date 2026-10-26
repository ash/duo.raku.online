---
title: 'Solutio: Typificatum vel non typificatum'
---

{% include menu.html %}

Hic est una solutio possibilis huius operis.

## Codex

```raku
my $untyped;
my Int $typed;

dd $untyped;
dd $typed;

$untyped = 42;
$typed = 42;

dd $untyped;
dd $typed;
```

🦋 Inveni codicem fontem in archivo [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Exitus

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Commentarii

1. `dd` duos continentes diverse describit. Pro eo qui sine typo est solum `$untyped` imprimit. Pro eo qui typum habet typum declaratum ante ponit: `Int $typed`. Hoc praefixum exacte est quod typus declaratus mutat.

1. Valores vacui quoque differunt. Continens sine typo cum valore indefinito simplici `Any` incipit. Sed continens cum typo cum valore indefinito *sui* typi incipit, `Int`.

1. Postquam `42` ambabus assignas, valores idem apparent. Sed `$typed` adhuc typum suum habet, itaque valorem non integrum non acciperet. `$untyped` autem quidlibet accipit.

{% include nav.html %}
