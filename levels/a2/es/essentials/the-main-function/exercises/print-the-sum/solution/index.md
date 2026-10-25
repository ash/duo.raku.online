---
title: 'Solution: Imprimir la suma'
---

{% include menu.html %}

El programa tiene solo una función, `MAIN`. Toma dos argumentos con tipos. Los dos argumentos reciben sus valores de la línea de comandos.

## Código

Aquí está la solución:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Encuentra el programa en el archivo [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Salida

Prueba diferentes números:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

También puedes ejecutar el programa sin argumentos. O puedes usar argumentos de otros tipos. Mira qué pasa. La segunda parte del curso muestra cómo manejar estos casos.

{% include nav.html %}
