---
title: Quiz — Distribuciones
translations_gpt:
---

{% include menu.html %}

Un archivo tiene el nombre y la versión de una distribución de Raku. También dice qué ofrece la distribución. ¿Cuál es ese archivo?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

El archivo `META6.json` describe una distribución. Es un archivo JSON en el directorio principal. Su clave `provides` conecta cada nombre de módulo con su archivo fuente. La clave `depends` lista las otras distribuciones que la distribución necesita.

</div>

{% include nav.html %}
