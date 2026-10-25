---
title: Quiz — Interpolar arrays
---

{% include menu.html %}

Tienes el siguiente arreglo:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Completa los programas de abajo para que impriman la salida que pedimos.

## 1

Imprime el tercer elemento, que es el elemento con índice `2`.

{:.quiz-code}
[2] | say &quot;El tercer elemento es @arr␣␣&quot;;

## 2

Imprime todos los elementos, sin escribir el índice de cada uno.

{:.quiz-code}
arr[] | say &quot;Este arreglo contiene: @␣␣␣␣.&quot;; | La salida es ”Este arreglo contiene: 10 9 8 3 2 1.“

## 3

Imprime el tamaño del arreglo con la ayuda del método `elems`.

{:.quiz-code}
{@arr.elems} | say &quot;Hay ␣␣␣␣␣␣␣␣ elementos.&quot;; | Se requieren llaves para incrustar código Raku en una cadena Raku.

{% include quiz.html %}

{% include nav.html %}
