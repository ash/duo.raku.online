---
title: zef y el ecosistema
translations_gpt:
---

{% include menu.html %}

`zef` instala módulos de Raku. Ya lo has usado para instalar módulos por su nombre. También funciona con una distribución en un directorio local. Entra en el directorio de una distribución. Desde allí, puedes probarla e instalarla directamente:

```
zef test .
zef install .
```

`zef test .` ejecuta los archivos de `t/`. `zef install .` instala la distribución en tu Raku. Entonces otros programas pueden cargarla con `use`. También puedes instalar por nombre, por ejemplo, `zef install Cro`. Esto hace lo mismo. Pero primero descarga la distribución del ecosistema.

A lo mejor quieres **publicar** tu propia distribución. Entonces otras personas pueden instalarla por nombre. Para esto, la subes al ecosistema. Normalmente la gente usa `fez` para esto:

```
fez upload
```

Esto empaqueta la distribución actual y la envía al ecosistema de Raku. Después, `zef install Maths::Simple` funciona para todos.

> Estos comandos necesitan `zef`/`fez` instalado y acceso a la red. Para subir, también necesitas una cuenta en el ecosistema.

Así que un módulo compartido pasa por tres pasos. Primero, le das la estructura estándar y un `META6.json`. Después, lo pruebas con `zef test`. Luego lo publicas con `fez upload`. A partir de ahí, es solo un nombre más. Cualquiera puede instalarlo con `zef install`.

{% include nav.html %}
