---
title: Bloques `else`
---

{% include menu.html %}

Después de un bloque `if`, puedes añadir un bloque `else`. Raku ejecuta el bloque `else` cuando la condición es `False`.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

No puedes usar un bloque `else` solo. Para eso, hay una forma mejor: [`unless`](../unless). Lo vemos muy pronto.

{% include nav.html %}
