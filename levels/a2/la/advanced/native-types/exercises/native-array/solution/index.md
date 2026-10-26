---
title: 'Solutio: Array nativum'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my uint8 @bytes = 100, 200, 255;
say @bytes.sum;
```

🦋 Inveni codicem fontem in archivo [native-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-array.raku).

## Exitus

```
555
```

## Commentarii

1. Scribe typum nativum dimensum `uint8` ante indicem `@`. Tum Raku quodque elementum in uno byte servat. Hoc byte non signatum est: nullum signum minus habet. Talis index parum memoriae occupat. Hoc bonum est pro datis binariis.

1. Quodque *elementum* limitem habet, `0..255`. Ultra hunc limitem valores circumvolvuntur. Sed hic limes non est pro summa elementorum. `.sum` totam summam in `Int` ordinarium ponit. Itaque `100 + 200 + 255` plenum `555` dat.

{% include nav.html %}
