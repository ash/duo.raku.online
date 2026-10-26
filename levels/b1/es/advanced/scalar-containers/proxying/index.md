---
title: Proxificación de llamadas a métodos
translations_gpt:
---

{% include menu.html %}

De hecho, un contenedor escalar es un objeto del tipo `Scalar`. En la mayoría de los casos, ni siquiera notas el contenedor cuando usas un escalar. No necesitas pensar en él. Puedes imaginar que trabajas directamente con los valores que contiene.

Esto funciona porque un contenedor escalar pasa las llamadas a métodos a su valor. Por ejemplo, después de `my $lang = 'Raku'`, puedes llamar al método `.chars` sobre la variable:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

El programa imprime `4`, el número de caracteres de la cadena `'Raku'`. Ahora llama a `.chars` directamente sobre el valor de la cadena, no sobre la variable contenedora. El resultado es exactamente el mismo:

```raku
say 'Raku'.chars; # 4
```

En otras palabras, el contenedor pasa en silencio la llamada a `.chars` a la cadena que tiene dentro. Luego te devuelve el resultado.

{% include nav.html %}
