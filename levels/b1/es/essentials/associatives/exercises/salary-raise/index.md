---
title: Aumento de salario
---

{% include menu.html %}

## Problema

Aquí tienes un hash con los datos de un empleado:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Aumenta el salario en un 5&thinsp;% e imprímelo junto con el nombre del empleado. Después del aumento, el hash `%employee` debe seguir teniendo los valores correctos.

## Ejemplo

Esto es lo que debe imprimir el programa:

```console
$ raku salary-raise.raku
Nuevo salario de Eliza Vents: 3150
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
