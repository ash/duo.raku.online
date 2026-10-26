---
title: 'Solutio: Quid est'
translations_gpt: Solutio exercitationis 'Quid est'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Inveni codicem fontem in archivo [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Exitus

```
True
False
```

## Commentarii

1. `$a.WHAT` non est series `Int`, sed verum obiectum typi `Int`. Itaque `=== Int` id cum typo ipso comparat et `True` reddit.

1. `$b` seriem continet, itaque eius `WHAT` est `Str`. Cum id cum `Int` comparas, `False` accipis. Ideo `WHAT` in condicionibus utile est, non solum cum aliquid imprimis.

{% include nav.html %}
