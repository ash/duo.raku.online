---
title: Quiz — Ejecutar programas
translations_gpt:
---

{% include menu.html %}

¿Qué función envía su orden a través de la **shell** del sistema y permite tuberías y redirecciones?

{:.quiz}
0 | `run`
1 | `shell`
0 | `exec`
0 | `system`

{% include quiz.html %}

<div class="extended-explanation">

`shell` pasa una única cadena a la shell, que entiende funcionalidades como las tuberías. `run` inicia un programa directamente, con argumentos separados y sin shell. Esto es más seguro, así que `run` es la mejor opción por defecto.

</div>

{% include nav.html %}
