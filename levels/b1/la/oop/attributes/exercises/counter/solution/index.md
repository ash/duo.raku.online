---
title: 'Solutio: Numerator'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Inveni codicem fontem in archivo [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Exitus

```
0
5
```

## Commentarii

1. Attributum cum `is rw` declaratur, itaque accessor eius receptaculum scribendum reddit. `= 0` ei valorem initialem dat. Primum `say` ostendit numeratorem novum revera ab hoc valore praedefinito incipere, `0`.

1. Accessor scribendus est, itaque `++` eum augere potest. Hoc operatur ut exspectas.

{% include nav.html %}
