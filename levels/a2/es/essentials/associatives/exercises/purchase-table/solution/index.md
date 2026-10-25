---
title: 'Solution: Tabla de compras'
---

{% include menu.html %}

La tabla tiene un encabezado. Puedes imprimirlo con un solo `say`. Después del encabezado, hay algunas filas. Todas las filas tienen las mismas partes. Cada fila tiene el nombre de un artículo y su precio. También tiene el número de artículos y su costo total.

El orden de las filas debe seguir igual. Por eso un array es un buen lugar para los artículos. Cada línea de la tabla es un elemento del array.

En el segundo nivel, cada artículo es un registro. Puedes guardarlo en un hash. El hash tiene algunos campos con nombre: `name`, `price` y `quantity`.

El resto del programa es un bucle sobre los artículos. Para cada artículo, el bucle calcula el total. Después imprime una fila de la tabla.

## Código

Aquí tienes una forma de resolver la tarea:

```raku
my @items = [
    {
        name => 'Chairs',
        price => 20.57,
        quantity => 4,
    },
    {
        name => 'Tables',
        price => 50.18,
        quantity => 1,
    }
];

say "Item\tPrice\tN\tTotal";
for @items -> $item {
    my $total = $item<price> * $item<quantity>;
    say "$item<name>\t\$$item<price>\t$item<quantity>\t\$$total";
}
```

🦋 Encuentra el programa en el archivo [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Salida

```console
$ raku exercises/associatives/purchase-table.raku
Item	Price	N	Total
Chairs	$20.57	4	$82.28
Tables	$50.18	1	$50.18
```

{% include nav.html %}
