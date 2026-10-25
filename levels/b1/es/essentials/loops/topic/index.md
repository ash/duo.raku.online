---
title: Variable de tema
---

{% include menu.html %}

`$_` es una variable especial. Se llama _variable de tema_.

Aquí tienes un bucle sobre un rango:

```raku
for 1..5 -> $n {
    say $n;
}
```

Puedes omitir la variable `$n`. Entonces Raku usa automáticamente la variable `$_` en su lugar. Así que el programa es lo mismo que este:

```raku
for 1..5 {
    say $_;
}
```

Como [recuerdas](/es/essentials/hello-world/), también puedes llamar a `say` como un método:

```raku
for 1..5 {
    $_.say;
}
```

Para llamar a un método en `$_`, no necesitas escribir la variable en sí. Así que podemos hacer nuestro bucle aún más simple:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
