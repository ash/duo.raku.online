---
title: Cadenas
---

{% include menu.html %}

En la parte de Esenciales, aprendiste [cómo construir cadenas](/es/essentials/strings). Aprendiste a unir cadenas y a interpolar. También aprendiste a obtener la longitud de una cadena. Las cadenas también tienen muchos métodos. Esta sección muestra los más útiles. La búsqueda con [expresiones regulares](/es/regexes) es otro tema, más grande. Tiene su propia parte más adelante en el curso.

Tres métodos cambian las letras de una cadena a mayúsculas o minúsculas. Las mayúsculas son las letras grandes, y las minúsculas son las pequeñas:

```raku
say 'raku'.uc; # RAKU  — upper case
say 'RAKU'.lc; # raku  — lower case
say 'raku'.tc; # Raku  — title case (first letter capitalised)
```

El método `flip` escribe los caracteres de una cadena al revés:

```raku
say 'Raku'.flip; # ukaR
```

Y el operador `x` repite una cadena varias veces. Tú das el número de veces:

```raku
say 'ab' x 3; # ababab
```

Los siguientes temas muestran cómo buscar en cadenas. También muestran cómo dividir cadenas en partes. Y muestran cómo unir otra vez las partes.

{% include nav.html %}
