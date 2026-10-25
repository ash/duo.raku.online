---
title: Quiz — Interpolar arrays
---

{% include menu.html %}

Aquí hay un arreglo:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Termina los programas de abajo. Deben imprimir la salida que pedimos.

## 1

Imprime el tercer elemento. Su índice es `2`.

{:.quiz-code}
[2] | say &quot;El tercer elemento es @arr␣␣&quot;;

## 2

Imprime todos los elementos. No escribas un índice para cada uno.

{:.quiz-code}
arr[] | say &quot;Este arreglo contiene: @␣␣␣␣.&quot;; | La salida es ”Este arreglo contiene: 10 9 8 3 2 1.“

## 3

Imprime el tamaño del arreglo. Para esto, llama al método `elems`.

{:.quiz-code}
{@arr.elems} | say &quot;Hay ␣␣␣␣␣␣␣␣ elementos.&quot;; | Se requieren llaves para incrustar código Raku en una cadena Raku.

{% include quiz.html %}

{% include nav.html %}
