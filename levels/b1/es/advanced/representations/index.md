---
title: Convirtiendo valores en texto
---

{% include menu.html %}

Cuando un programa muestra un valor, tiene que convertir ese valor en texto. Esto pasa cuando muestras el valor con `say`, lo imprimes o lo pones en una cadena. Raku no tiene una sola forma fija de hacerlo. En cambio, cada valor tiene algunos métodos estándar. Cada uno de ellos crea una cadena con un propósito diferente:

* `.gist` — una forma que las personas pueden leer fácilmente. Es lo que imprime `say`.
* `.Str` — la forma de cadena simple, para los lugares donde Raku necesita una cadena.
* `.raku` — una forma similar a código, que es útil cuando depuras.

Los tres son métodos normales que tiene cada valor en Raku. Por eso funcionan igual con números, cadenas, arreglos y tus propios objetos. Las páginas siguientes explican cada método uno por uno. Luego te ayudan a elegir el correcto. [La sección siguiente presenta `dd`](/es/advanced/dd), una herramienta de Rakudo que se basa en `.raku`.

{% include nav.html %}
