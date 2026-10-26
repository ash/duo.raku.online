---
title: 'Solutio: Array nativum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Typus nativus dimensus `uint8` ante indicem `@` stat. Hoc indicem declarat ubi quodque elementum est unum byte non signatum. Parum memoriae occupat, quod bonum est pro datis binariis.

1. Limes circumvolutionis `0..255` ad quodque *elementum* pertinet, sed non ad summam eorum. `.sum` totam summam in `Int` ordinarium involvit. Itaque `100 + 200 + 255` plenum `555` dat.

{% include nav.html %}
