---
title: Secuencias perezosas e infinitas
translations_gpt:
---

{% include menu.html %}

Una secuencia no necesita calcular todos sus valores a la vez. Las secuencias en Raku son _perezosas_ (lazy). Raku crea cada valor solo cuando de verdad lo necesitas. Así puedes describir una secuencia sin ningún final.

Para una secuencia infinita, usa `Inf` como punto final. Raku hace el `=` antes que el `...`. Decimos que `...` tiene menor precedencia que `=`. Por eso pon la secuencia entre paréntesis:

```raku
my $naturals = (1 ... Inf);
```

Mira `my $naturals = 1 ... Inf` sin paréntesis. Aquí, la variable recibe solo `1`. Después, Raku construye la secuencia por su cuenta. Nadie usa esta secuencia sin fin. Pero Raku intenta calcularla. Así que el programa se cuelga y nunca termina.

Hasta ahora, Raku no calcula nada. La secuencia te da valores solo cuando los pides. El método `head` toma los primeros valores:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

La secuencia es infinita. Pero Raku crea solo los primeros cinco números. Sin la evaluación perezosa, el programa intenta construir toda la secuencia sin fin. Un programa así nunca termina.

Una secuencia finita tiene un final. En una secuencia así, el método `tail` toma valores del final:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

La evaluación perezosa te deja hacer dos cosas por separado. Primero, das la _descripción_ de una secuencia. Después, decides cuánto de ella usar.

{% include nav.html %}
