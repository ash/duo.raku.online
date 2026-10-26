---
title: Una variable dinámica
translations_gpt: true
---

{% include menu.html %}

## Problema

Una variable dinámica tiene el twigil `*`. Raku la busca a través de la pila de llamadas, no por ámbito léxico. Así que una subrutina puede ver valores diferentes. El valor depende de quién llama a la subrutina. Así, un bloque puede ejecutar el código que llama como otra persona.

1. Declara una variable dinámica `$*user` con el valor `'guest'`.
2. Escribe una subrutina `whoami`. La subrutina imprime `running as ` y luego el valor actual de `$*user`, por ejemplo, `running as guest`. No tiene parámetros. Debe leer `$*user` directamente.
3. Llama a `whoami` una vez en el nivel superior. Muestra `guest`.
4. Luego crea un bloque. Dentro, declara `$*user` otra vez como `'admin'`. Llama allí a la *misma* `whoami`. Ahora muestra `admin`.

## Ejemplo

El programa imprime:

```
running as guest
running as admin
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
