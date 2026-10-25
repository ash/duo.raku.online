---
title: 'Solution: Tabla de compras'
---

{% include menu.html %}

La tabla tiene un encabezado, que puedes imprimir con un solo `say`. Después hay varias filas con la misma estructura. Cada fila muestra el nombre del artículo, su precio, la cantidad y el costo total.

Quieres mantener las filas en orden. Por eso un array es una buena opción para los artículos. Así, cada línea de la tabla se convierte en un elemento del array.

En el segundo nivel, puedes guardar cada registro en un hash. El hash tiene algunos campos con nombre: `name`, `price` y `quantity`.

Después, el programa solo necesita un bucle sobre los artículos. En el bucle, calcula los totales e imprime las filas de la tabla.

## Código

Aquí tienes una posible solución para esta tarea:

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
