---
title: Convirtiendo valores en texto
---

{% include menu.html %}

A veces un programa muestra un valor. Puedes mostrarlo con `say`, imprimirlo o ponerlo en una cadena. En todos estos casos, el valor tiene que convertirse en texto. Raku no tiene una sola forma fija de hacer esto. En cambio, cada valor tiene unos pocos métodos estándar. Cada método crea una cadena para un fin diferente:

* `.gist` — una forma fácil de leer para las personas. `say` imprime esta forma.
* `.Str` — la forma de cadena simple. Raku la usa cuando necesita una cadena.
* `.raku` — una forma parecida al código. Es útil cuando depuras un programa.

Los tres son métodos normales. Todos los valores en Raku los tienen. Por eso funcionan igual con cualquier valor. Puede ser un número, una cadena o un arreglo. También puede ser un objeto tuyo. Las páginas siguientes muestran cada método, uno por uno. Luego te ayudan a elegir el correcto. [La sección siguiente trata sobre `dd`](/es/advanced/dd). Es una herramienta de Rakudo. Se basa en `.raku`.

{% include nav.html %}
