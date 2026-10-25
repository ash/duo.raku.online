---
title: 'Solution: Aumento de salario'
---

{% include menu.html %}

El programa debe cambiar un valor del hash. Le asignas un valor nuevo. Esto es casi igual que con una variable escalar.

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

Ejecuta el programa. Comprueba que los cálculos son correctos. Comprueba también que conviertes bien los porcentajes.

```console
$ raku exercises/associatives/salary-raise.raku
Nuevo salario de Eliza Vents: 3150
```

{% include nav.html %}
