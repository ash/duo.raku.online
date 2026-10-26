---
title: 'Solutio: Praedefinitum nativum'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Nativus `num` indefinitus esse non potest. Itaque a `0` incipit, sicut nativus `int`. Non ut `(Num)` incipit.

1. Nativus `str` ut chorda vacua incipit. Itaque nihil inter parentheses est. Typus nativus numquam valorem indefinitum continet.

1. Hic typi valde necessarii sunt. Conare eos removere. Scribe eorum loco `my $n; my $s;`. Nunc variabiles sunt receptacula ordinaria. Initio sunt *indefinitae*: `Any` continent. Tum `say $n` imprimit `(Any)`. Chorda `$s` interpolat, sed `$s` indefinita est. Itaque Raku monitum ostendit: *"Use of uninitialized value … in string context"*. Soli typi nativi `num` et `str` valores initiales dant. Hi sunt `0` et chorda vacua.

{% include nav.html %}
