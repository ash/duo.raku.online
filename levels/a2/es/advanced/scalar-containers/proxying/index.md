---
title: Proxificación de llamadas a métodos
translations_gpt:
---

{% include menu.html %}

Un contenedor escalar es en realidad un objeto del tipo `Scalar`. Normalmente, no ves este contenedor para nada. No necesitas pensar en él. Puedes imaginar que trabajas directamente con los valores que hay dentro.

¿Por qué funciona esto? Un contenedor escalar pasa las llamadas a métodos al valor que tiene dentro. Por ejemplo, toma la asignación `my $lang = 'Raku'`. Después de ella, puedes llamar al método `.chars` sobre la variable:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

El programa imprime `4`. Es el número de caracteres de la cadena `'Raku'`. Ahora llama a `.chars` sobre el valor de la cadena, no sobre la variable. El resultado es exactamente el mismo:

```raku
say 'Raku'.chars; # 4
```

Así, el contenedor pasa en silencio la llamada a `.chars` a su cadena. Luego te devuelve el resultado.

{% include nav.html %}
