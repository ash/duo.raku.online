---
title: Quiz — Restricciones de tipo
---

{% include menu.html %}

Añade restricciones de tipo a las variables del programa de abajo. Elige el tipo más específico que puede guardar el valor.

{:.quiz-code}
Int | my ␣␣␣ $a = 500;
Int | my ␣␣␣ $b = 304839573985398539853535353; | Los números largos son soportados de forma nativa.
Rat | my ␣␣␣ $c = 3.5; | Esto es un `Rat`. Nota que los valores `Num` se escriben en notación científica.
Rat | my ␣␣␣ $d = 17/19; | Esto también es un `Rat`, y no una división.
Rat | my ␣␣␣ $e = <2/5>; | Esta es una de las posibles notaciones para `Rat`s.
Num | my ␣␣␣ $f = pi; | El valor incorporado de π es un valor `Num`.
Num | my ␣␣␣ $g = 3e-4;
Str | my ␣␣␣ $h = &apos;18&apos;;

{% include quiz.html %}

{% include nav.html %}
