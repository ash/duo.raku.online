---
title: 'Solución: Empleados y roles'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Employee {
    has $.name;
    method role {
        'staff';
    }
    method badge {
        "$.name - " ~ self.role;
    }
}

class Manager is Employee {
    method role { 'manager' }
}

class Intern is Employee {
    method role { 'intern' }
}

say Manager.new(name => 'Anna').badge;
say Intern.new(name => 'Bob').badge;
```

🦋 Puedes encontrar el código fuente en el archivo [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Salida

```
Anna - manager
Bob - intern
```

## Comentarios

1. `Manager` e `Intern` heredan de `Employee` el atributo `name` y el método `badge`. Así que ninguna de las dos necesita repetir ese código.

1. Cada clase hija sobrescribe `role`. Como `badge` llama a `self.role`, usa la versión nueva que pertenece al objeto real. Así que la gerente y el becario reciben credenciales distintas.

1. El nombre del método, `role`, es solo un nombre. Pero es igual que la palabra clave `role`, que conocerás más adelante.

{% include nav.html %}
