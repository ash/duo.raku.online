---
title: 'Solution: Imprimir la suma'
---

{% include menu.html %}

El programa tiene una sola función `MAIN`. Toma dos argumentos tipados. Los dos se crean a partir de los argumentos de la línea de comandos.

## Código

Aquí está la solución:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Encuentra el programa en el archivo [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Salida

Prueba diferentes números de entrada:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

También puedes ejecutar el programa sin argumentos, o con argumentos de otros tipos. Mira qué pasa entonces. Hablaremos de cómo manejar estos casos en la segunda parte del curso.

{% include nav.html %}
