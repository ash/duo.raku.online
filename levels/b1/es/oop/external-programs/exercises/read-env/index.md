---
title: Pase una variable a un proceso hijo
translations_gpt:
---

{% include menu.html %}

## Problema

Crea un archivo `notes.txt` y escribe unas cuantas líneas en él. Pon su nombre en una variable de entorno `NOTES`. Después usa `shell` para ejecutar `wc -l` y tomar el nombre del archivo de `$NOTES`. Entonces el programa hijo cuenta las líneas e imprime el número. Por último, borra el archivo desde Raku con `unlink`, no a través de la shell.

## Ejemplo

El programa imprime:

```
3
```

Además, no deja ningún archivo `notes.txt` atrás.

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
