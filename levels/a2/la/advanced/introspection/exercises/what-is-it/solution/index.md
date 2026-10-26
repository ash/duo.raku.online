---
title: 'Solutio: Quid est'
translations_gpt: Solutio exercitationis 'Quid est'
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `$a.WHAT` non est series `Int`. Est verum obiectum typi `Int`. Itaque `=== Int` id cum typo ipso comparat. Eventus est `True`.

1. `$b` seriem tenet. Itaque eius `WHAT` est `Str`. Comparatio cum `Int` `False` dat. Ergo `WHAT` in condicionibus utile est. Non solum ad imprimendum est.

{% include nav.html %}
