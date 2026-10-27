---
title: 'Solución: Empleados y roles'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `Manager` e `Intern` heredan el atributo `name` de `Employee`. También heredan el método `badge`. Así que no tienen que repetir este código.

1. Cada clase hija sobrescribe `role`. El método `badge` llama a `self.role`. Así que usa el `role` del objeto mismo. Es la versión nueva de la clase hija. Por eso la gerente y el becario reciben credenciales distintas.

1. Aquí, `role` es solo el nombre de un método. Pero Raku también tiene una palabra clave `role`. La vas a conocer más adelante.

{% include nav.html %}
