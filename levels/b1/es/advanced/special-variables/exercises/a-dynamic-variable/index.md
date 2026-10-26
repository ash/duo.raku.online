---
title: Una variable dinámica
translations_gpt: true
---

{% include menu.html %}

## Problema

Una variable dinámica se escribe con el twigil `*`. Raku la encuentra buscando hacia afuera a través de la pila de llamadas, no por ámbito léxico. Así que el valor que ve una subrutina depende de quién la llamó. Esto permite a un bloque ejecutar el código que llama con una identidad diferente.

1. Declara una variable dinámica `$*user` con el valor `'guest'`.
2. Escribe una subrutina `whoami` que imprima `running as ` y luego el valor actual de `$*user` (por ejemplo, `running as guest`). No tiene parámetros, así que debe leer `$*user` directamente.
3. Llama a `whoami` una vez en el nivel superior. Muestra `guest`.
4. Luego crea un bloque que declare `$*user` otra vez como `'admin'`. Dentro de él, llama otra vez a la *misma* `whoami`. Ahora muestra `admin`.

## Ejemplo

El programa imprime:

```
running as guest
running as admin
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
