---
title: zef y el ecosistema
translations_gpt:
---

{% include menu.html %}

`zef` es el instalador de módulos de Raku. Ya lo has usado para instalar módulos por su nombre. También funciona con un directorio de distribución local. Dentro de una distribución, puedes probarla e instalarla directamente:

```
zef test .
zef install .
```

`zef test .` ejecuta los archivos de `t/`. `zef install .` instala la distribución en tu Raku, para que otros programas puedan cargarla con `use`. Instalar por nombre, como en `zef install Cro`, hace lo mismo. Pero primero descarga la distribución del ecosistema.

Puedes **publicar** tu propia distribución, para que otros puedan instalarla por nombre. Para eso, la subes al ecosistema. La herramienta habitual para esto es `fez`:

```
fez upload
```

Esto empaqueta la distribución actual y la envía al ecosistema de Raku. Después, `zef install Maths::Simple` funcionará para cualquiera.

> Estos comandos necesitan tener `zef`/`fez` instalado y una conexión a la red. Para subir, también hace falta una cuenta en el ecosistema.

Así que la vida de un módulo compartido tiene tres pasos. Lo organizas con un `META6.json` y lo pruebas con `zef test`. Luego lo publicas con `fez upload`. A partir de entonces, es solo un nombre más que cualquiera puede instalar con `zef install`.

{% include nav.html %}
