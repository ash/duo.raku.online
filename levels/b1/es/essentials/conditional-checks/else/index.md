---
title: Bloques `else`
---

{% include menu.html %}

Un bloque `if` puede tener un bloque `else` después. Raku ejecuta el bloque `else` cuando la condición no se cumple.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

No puedes usar el bloque `else` por sí solo. Para esto hay una opción mejor llamada [`unless`](../unless). La veremos en un minuto.

{% include nav.html %}
