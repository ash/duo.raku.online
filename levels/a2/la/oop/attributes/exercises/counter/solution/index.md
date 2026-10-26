---
title: 'Solutio: Numerator'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Attributum `is rw` habet. Itaque accessor eius receptaculum reddit in quo scribere potes. `= 0` attributo valorem initialem dat. Primum `say` numeratorem novum probat. Is revera a valore praedefinito incipit, `0`.

1. In accessore scribere potes. Itaque `++` operatur ut exspectas. Numero unum addit.

{% include nav.html %}
