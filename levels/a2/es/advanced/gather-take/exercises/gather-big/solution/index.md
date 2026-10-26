---
title: 'Solution: Recolectar hasta llenar'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El bucle recibe un rango de cien números. Necesita muchos menos. Pero esto está bien. El bucle se detiene solo. Cuando `$sum` es mayor que `10`, `last` sale del bucle. El programa nunca mira los otros números.

1. El orden en el bloque es importante. Primero, sumamos el número a `$sum`. Luego comprobamos el límite. Después, tomamos el número. Un número hace el total mayor que `10`. Aquí, este número es `5`. El código no lo toma. Después de `4`, el total es exactamente `10`. Así que la lista es `1, 2, 3, 4`.

1. Con `for`, `gather`/`take` puede parar antes de tiempo. `grep` no puede hacer esto. `grep` siempre mira toda la lista. Aquí, nosotros elegimos cuándo parar.

{% include nav.html %}
