---
title: Variable de tema
---

{% include menu.html %}

`$_` es una variable especial. Se llama _variable de tema_.

Mira este bucle sobre un rango:

```raku
for 1..5 -> $n {
    say $n;
}
```

Puedes quitar la variable `$n`. Entonces Raku usa la variable `$_` en su lugar. El programa hace lo mismo que este:

```raku
for 1..5 {
    say $_;
}
```

[Ya sabes](/es/essentials/hello-world/) que puedes usar `say` como un método:

```raku
for 1..5 {
    $_.say;
}
```

Cuando llamas a un método en `$_`, no necesitas escribir la variable. Así, el bucle puede ser aún más corto:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
