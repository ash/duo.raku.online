---
title: 'Solution: Un trait personalizado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El trait es un `multi sub trait_mod:<is>` con el parámetro nombrado `:$role!`. Este parámetro hace que se ejecute para `is role(...)`. Algunos traits solo están presentes o ausentes, pero este *recibe* el argumento. Aquí, `is role('admin')` vincula `'admin'` a `$role`.

1. El cuerpo guarda este valor bajo el nombre de la subrutina. Cuando después lees `%role<login>`, obtienes `admin`. Los traits se ejecutan en tiempo de compilación, así que la entrada ya existe cuando el programa se ejecuta.

{% include nav.html %}
