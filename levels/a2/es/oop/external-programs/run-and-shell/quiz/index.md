---
title: Quiz — Ejecutar programas
translations_gpt:
---

{% include menu.html %}

¿Qué función envía su orden a través de la **shell** del sistema? Esta función te permite usar tuberías y redirecciones.

{:.quiz}
0 | `run`
1 | `shell`
0 | `exec`
0 | `system`

{% include quiz.html %}

<div class="extended-explanation">

`shell` da una única cadena a la shell. La shell entiende herramientas como las tuberías. `run` inicia un programa directamente. Toma argumentos separados y no usa ninguna shell. Esto es más seguro. Así que `run` es la mejor opción por defecto.

</div>

{% include nav.html %}
