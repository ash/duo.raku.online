---
title: Quiz — Prefijo o posfijo
translations_gpt:
---

{% include menu.html %}

Has visto `++` *después* de una variable, como postfijo. También puedes escribirlo *antes* de la variable. ¿A qué categoría pertenece `++` en `++$x`?

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

La categoría depende solo de la *posición*. En `++$x`, el operador va antes de su único operando, así que es un operador **prefijo**. El mismo `++` es un postfijo cuando va después, como en `$x++`. Las dos formas aumentan `$x` en uno. La forma prefija devuelve el valor nuevo, así que esto imprime `6`.

</div>

{% include nav.html %}
