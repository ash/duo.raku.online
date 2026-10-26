---
title: Quiz — Distribuciones
translations_gpt:
---

{% include menu.html %}

¿Qué archivo describe una distribución de Raku, con su nombre, su versión y lo que ofrece?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

`META6.json` describe una distribución. Es un archivo JSON en el directorio raíz de la distribución. Su clave `provides` conecta cada nombre de módulo con su archivo fuente. La clave `depends` lista las otras distribuciones que necesita.

</div>

{% include nav.html %}
