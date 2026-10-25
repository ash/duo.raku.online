---
title: 'Solution: Aumento de salario'
---

{% include menu.html %}

El programa necesita cambiar uno de los valores del hash. Asignar el nuevo valor funciona casi igual que con una variable escalar.

## Código

Aquí está la solución:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;

my $raise = 5; # en porcentajes

%employee<salary> *= (1 + $raise / 100);
say "Nuevo salario de %employee<full-name>: %employee<salary>";
```

🦋 Encuentra el programa en el archivo [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Salida

Cuando ejecutes el programa, comprueba que tus cálculos son correctos. Comprueba también que convertiste los porcentajes correctamente.

```console
$ raku exercises/associatives/salary-raise.raku
Nuevo salario de Eliza Vents: 3150
```

{% include nav.html %}
