---
title: Introspección con `WHAT`
---

{% include menu.html %}

Puedes ver el tipo del dato de una variable. Llama al método `WHAT` sobre ella:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Raku imprime el tipo entre paréntesis. Puedes verlo en los comentarios. Por ejemplo, `(Int)` o `(Str)`.

También puedes llamar a un método directamente sobre un literal. Un literal es un valor escrito en el código. Por ejemplo:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Fíjate en los paréntesis alrededor de `-1`. Aquí los necesitamos. Mira `say -1.WHAT` sin paréntesis. Aquí, Raku llama primero a `1.WHAT`. Luego intenta poner un signo menos delante del resultado. Esto lleva a una excepción, un tipo de error.

{% include nav.html %}
