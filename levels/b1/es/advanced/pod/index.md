---
title: Documentar código
translations_gpt: true
---

{% include menu.html %}

Raku tiene un marcado de documentación que forma parte del lenguaje. Se llama _Pod_, o _Rakudoc_. Escribes la documentación directamente en tu archivo fuente con directivas `=`. El compilador puede mostrarla como texto con formato. También puede hacerla accesible para tu programa.

Esta sección trata las directivas básicas de Pod y los códigos de formato para marcar texto. También muestra cómo obtener la documentación. La obtienes como texto con formato con `raku --doc`, o como datos a través de la variable `$=pod`.

{% include nav.html %}
