---
title: 'Solutio: Praedefinitum nativum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my num $n;
my str $s;

say $n;
say "[$s]";
```

🦋 Inveni codicem fontem in archivo [native-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-default.raku).

## Exitus

```
0
[]
```

## Commentarii

1. Nativus `num` indefinitus esse non potest. Itaque, sicut nativus `int`, a `0` incipit, non a `(Num)`.

1. Nativus `str` ut chorda vacua incipit. Ideo nihil inter parentheses in eventu apparet. Nullus typorum nativorum umquam valorem indefinitum continet.

1. Nomina typorum hic valde necessaria sunt. Si ea removes et `my $n; my $s;` scribis, variabiles receptacula ordinaria fiunt. Initio *indefinitae* sunt (`Any`). Tum `say $n` imprimit `(Any)`. Interpolatio indefinitae `$s` etiam monitum dat: *"Use of uninitialized value … in string context"*. Soli typi nativi `num` et `str` valores defaltos `0` et chordam vacuam dant.

{% include nav.html %}
