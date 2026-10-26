---
title: 'Solutio: Typificatum vel non typificatum'
---

{% include menu.html %}

Hoc modo opus solvere potes.

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

1. `dd` duos continentes diversis modis ostendit. Pro continenti sine typo solum `$untyped` imprimit. Pro continenti cum typo typum declaratum ante addit: `Int $typed`. Hoc est exacte quod typus declaratus mutat.

1. Valores vacui quoque differunt. Continens sine typo cum `Any` incipit. Hic est valor indefinitus basalis. Continens cum typo cum valore indefinito *sui* typi incipit. Hoc loco est `Int`.

1. Deinde ambae variabiles `42` accipiunt. Nunc valores idem apparent. Sed `$typed` adhuc typum suum habet. Valorem qui numerus integer non est non accipit. `$untyped` quemlibet valorem accipit.

{% include nav.html %}
