---
title: 'Solutio: Solum integri'
---

{% include menu.html %}

Hic est una solutio possibilis huius operis.

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

1. Restrictio typi `Int` in `my Int $cars` facit ut continens omnes valores non integros reiciat. Si `250.7`, valorem `Rat`, directe assignares, error tempore compilationis esset.

1. Vocatio `.Int` in valore rationali `250.7` eum in numerum integrum `250` convertit. Simpliciter partem fractionalem abicit. Novus valor continenti convenit. Noli hoc cum rotundatione confundere.

1. Pseudo-methodus `.WHAT` ostendit valorem in continenti typum `Int` habere.

{% include nav.html %}
