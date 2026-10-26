---
title: Cadenas
---

{% include menu.html %}

En la parte de Esenciales, aprendiste [cómo construir cadenas](/es/essentials/strings). Viste la concatenación, la interpolación y la longitud de una cadena. Las cadenas también tienen un gran conjunto de métodos. Esta sección reúne los más útiles. La búsqueda con [expresiones regulares](/es/regexes) es un tema aparte y más grande. Se trata en su propia parte más adelante.

Tres métodos cambian las letras de una cadena entre mayúsculas y minúsculas:

```raku
say 'raku'.uc; # RAKU  — upper case
say 'RAKU'.lc; # raku  — lower case
say 'raku'.tc; # Raku  — title case (first letter capitalised)
```

El método `flip` invierte el orden de los caracteres de una cadena:

```raku
say 'Raku'.flip; # ukaR
```

Y el operador `x` repite una cadena tantas veces como pidas:

```raku
say 'ab' x 3; # ababab
```

Los siguientes temas muestran cómo buscar dentro de cadenas. También muestran cómo dividir cadenas en partes y volver a unirlas.

{% include nav.html %}
