---
title: Quiz — Prefijo o posfijo
translations_gpt:
---

{% include menu.html %}

Has visto `++` *después* de una variable. Ahí es un postfijo. También puedes escribirlo *antes* de una variable. ¿Cuál es la categoría de `++` en `++$x`?

```raku
my $x = 5;
say ++$x;
```

{:.quiz}
1 | prefix
0 | postfix
0 | infix
0 | postcircumfix

{% include quiz.html %}

<div class="extended-explanation">

Solo la *posición* decide la categoría. En `++$x`, el operador está antes de su único operando. Por eso es un operador **prefijo**. Escribe el mismo `++` después, como en `$x++`. Entonces es un postfijo. Las dos formas suman 1 a `$x`. La forma prefija devuelve el valor nuevo. Por eso el programa imprime `6`.

</div>

{% include nav.html %}
