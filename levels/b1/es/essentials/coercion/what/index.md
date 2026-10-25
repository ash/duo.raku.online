---
title: Introspección con `WHAT`
---

{% include menu.html %}

Para ver el tipo de dato de una variable, llama al método `WHAT` sobre ella:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Como ves en los comentarios, el tipo se imprime entre paréntesis. Por ejemplo, `(Int)` o `(Str)`.

No hay problema en llamar a un método sobre el propio literal. Por ejemplo:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Fíjate en que ponemos `-1` entre paréntesis. Sin ellos, `say -1.WHAT` intentaría poner un signo menos delante del resultado de `1.WHAT`. Esto lleva a una excepción.

{% include nav.html %}
