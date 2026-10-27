---
title: Pase una variable a un proceso hijo
translations_gpt:
---

{% include menu.html %}

## Problema

Crea un archivo `notes.txt`. Escribe unas líneas en él. Pon el nombre del archivo en una variable de entorno `NOTES`. Después usa `shell` para ejecutar `wc -l`. La shell toma el nombre del archivo de `$NOTES`. Así el programa hijo cuenta las líneas e imprime el número. Un programa hijo es un programa que tu programa inicia. Al final, borra el archivo desde Raku. Usa `unlink` para esto, no la shell.

## Ejemplo

El programa imprime:

```
3
```

Después, el archivo `notes.txt` ya no existe.

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
