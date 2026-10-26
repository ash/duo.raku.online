---
title: 'Solution: Recolectar hasta llenar'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $sum = 0;
my @result = gather for 1..100 {
    $sum += $_;
    last if $sum > 10;
    take $_;
}

say @result;
```

🦋 Encuentra el programa en el archivo [gather-big.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/gather-big.raku).

## Salida

```
[1 2 3 4]
```

## Comentarios

1. El bucle recibe un rango de cien números, muchos más de los que usará. Eso está bien, porque el bucle se detiene solo. En cuanto `$sum` pasa de `10`, `last` sale del bucle. El resto de los números nunca se miran.

1. El orden dentro del bloque importa. Primero sumamos a `$sum` y comprobamos el límite antes de tomar el número. Así que el número que hace pasar el total de `10` (aquí, `5`) no se recoge. El total llega exactamente a `10` después de `4`, así que la lista es `1, 2, 3, 4`.

1. Con `for`, `gather`/`take` puede salir antes de tiempo, pero `grep` no puede. `grep` siempre recorre toda la lista, mientras que aquí elegimos cuándo parar.

{% include nav.html %}
