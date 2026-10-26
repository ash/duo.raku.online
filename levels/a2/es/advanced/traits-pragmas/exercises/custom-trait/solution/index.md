---
title: 'Solution: Un trait personalizado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Puedes encontrar el código fuente en el archivo [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Salida

```
admin
```

## Comentarios

1. El trait es un `multi sub trait_mod:<is>`. Tiene un parámetro nombrado, `:$role!`. Por este parámetro, la sub se ejecuta para `is role(...)`. Algunos traits solo están o no están. Este trait es diferente. *Recibe* el argumento: `is role('admin')` da `'admin'` a `$role`.

1. El cuerpo guarda este valor bajo el nombre de la subrutina. Después, `%role<login>` da `admin`. Los traits se ejecutan en tiempo de compilación. Así, el valor ya está en el hash cuando el programa se ejecuta.

{% include nav.html %}
