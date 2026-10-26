---
title: 'Solution: Sumar todos los argumentos'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub total(*@nums) {
    [+] @nums
}

say total(3, 5, 7);
```

🦋 Encuentra el programa en el archivo [sum-all-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/sum-all-arguments.raku).

## Salida

```
15
```

## Comentarios

1. El parámetro slurpy `*@nums` recoge todos los argumentos en el array `@nums`. El número de argumentos no importa.

1. Después, el meta-operador de reducción `[+]` los suma todos. El resultado es `15`.

{% include nav.html %}
