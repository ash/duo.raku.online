---
title: Instalar módulos desde la web
translations_gpt:
---

{% include menu.html %}

No estás limitado a los módulos que escribes tú mismo. La comunidad de Raku ha publicado una gran colección de módulos. Cubren de todo, desde frameworks web hasta formatos de datos. Puedes instalarlos y usarlos en tus propios programas.

## El instalador `zef`

Los módulos se instalan con `zef`, que es el gestor de módulos estándar. Viene junto con Rakudo. Para instalar un módulo, pasa su nombre a `zef`:

```console
$ zef install JSON::Fast
```

`zef` descarga el módulo junto con todo lo que necesita. Luego ejecuta las pruebas del módulo y lo instala. Un módulo instalado está en la ruta de búsqueda automáticamente. Así que un programa puede cargarlo con un simple `use`. No hace falta la opción `-I`:

```raku
use JSON::Fast;
```

`zef` también puede buscar en el ecosistema. Además, puede actualizar o eliminar módulos:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## De dónde vienen los módulos

Los módulos publicados forman parte del _ecosistema_ de Raku. Puedes explorarlo en el sitio web [raku.land](https://raku.land). Este sitio lista las distribuciones disponibles y su documentación.

## `META6.json`

Una distribución pensada para compartir tiene un archivo de descripción llamado `META6.json`. Este archivo guarda el nombre y la versión de la distribución. También lista los módulos que ofrece y las otras distribuciones de las que depende. `zef` lee este archivo. Con él, `zef` sabe qué instalar y cómo encajan las partes. Si publicas tu propio módulo, necesita un `META6.json` correcto. Eso es lo que permite que todos los demás lo instalen.

{% include nav.html %}
