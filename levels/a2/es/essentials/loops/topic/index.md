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

No tienes que escribir `$n`. Sin ella, Raku usa la variable `$_`. Raku crea esta variable por ti. Así, este programa hace lo mismo:

```raku
for 1..5 {
    say $_;
}
```

[Ya sabes](/es/essentials/hello-world/) que `say` también puede ser un método:

```raku
for 1..5 {
    $_.say;
}
```

Una llamada a un método en `$_` no necesita el nombre `$_`. Así, el bucle puede ser aún más corto:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
