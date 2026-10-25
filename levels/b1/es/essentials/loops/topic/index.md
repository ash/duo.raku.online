---
title: Variable de tema
---

{% include menu.html %}

`$_` es una variable especial llamada _variable de tema_.

Mira este bucle sobre un rango:

```raku
for 1..5 -> $n {
    say $n;
}
```

Puedes omitir la variable `$n`, y entonces Raku usa en su lugar una variable automática, `$_`. El programa es lo mismo que este:

```raku
for 1..5 {
    say $_;
}
```

Como [recuerdas](/es/essentials/hello-world/), también puedes usar `say` como un método:

```raku
for 1..5 {
    $_.say;
}
```

Cuando llamas a un método en `$_`, no tienes que escribir la variable en sí. Así que nuestro bucle se puede simplificar aún más:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
