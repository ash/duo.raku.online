---
title: Operaciones booleanas con otros tipos
---

{% include menu.html %}

La siguiente sección trata de [cambiar datos de un tipo a otro](/es/essentials/coercion). Pero antes, mira una característica importante de Raku. Puedes usar operaciones booleanas con cadenas o enteros. Entonces Raku no cambia los valores a valores booleanos. El resultado tampoco es un valor booleano. Mira estos ejemplos:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Aquí están las reglas 📖 [de la documentación](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` devuelve el primer valor que Raku ve como Falso. Si no hay ninguno, devuelve el último valor.
* `||` devuelve el primer valor que Raku ve como Verdadero. Si no hay ninguno, devuelve el último valor.
* `^^` devuelve el valor Verdadero si hay solo un valor Verdadero. Si todos los valores son Falsos, devuelve el último valor. Si más de un valor es Verdadero, devuelve `Nil`.

Aquí vemos un valor nuevo, `Nil`. Es un valor ‘nulo’.

{% include nav.html %}
