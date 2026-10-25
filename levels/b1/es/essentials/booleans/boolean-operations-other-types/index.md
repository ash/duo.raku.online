---
title: Operaciones booleanas con otros tipos
---

{% include menu.html %}

En la siguiente sección, hablaremos sobre [convertir datos de un tipo a otro](/es/essentials/coercion). Pero antes de eso, es importante señalar una característica de Raku. Puedes usar operaciones booleanas con cadenas o enteros. En este caso, los valores no se convierten en booleanos. El resultado tampoco es un valor booleano. Mira estos ejemplos:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Leamos las reglas 📖 [de la documentación](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` devuelve el primer argumento que es Falso como booleano. Si no hay ninguno, devuelve el último argumento.
* `||` devuelve el primer argumento que es Verdadero como booleano. Si no hay ninguno, devuelve el último argumento.
* `^^` devuelve el argumento Verdadero si hay exactamente uno. Si todos los argumentos son Falsos, devuelve el último. Si más de un argumento es Verdadero, devuelve `Nil`.

Observa que acabamos de encontrarnos con `Nil`, que es un valor ‘nulo’.

{% include nav.html %}
