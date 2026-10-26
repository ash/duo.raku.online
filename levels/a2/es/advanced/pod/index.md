---
title: Documentar código
translations_gpt: true
---

{% include menu.html %}

Raku tiene su propia forma de escribir documentación. Es parte del lenguaje. Se llama _Pod_, o _Rakudoc_. Escribes la documentación directamente en tu archivo fuente. Para esto, usas líneas que empiezan con `=`. Estas líneas se llaman directivas. El compilador puede mostrar la documentación como texto con formato. También puede dársela a tu programa.

Esta sección muestra las directivas básicas de Pod. También muestra los códigos de formato. Con ellos, marcas palabras en el texto. Por último, muestra cómo obtener la documentación. Puedes obtenerla con `raku --doc` como texto con formato. O puedes obtenerla como datos a través de la variable `$=pod`.

{% include nav.html %}
