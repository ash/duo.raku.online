---
title: Instalar módulos desde la web
translations_gpt:
---

{% include menu.html %}

Puedes escribir tus propios módulos. Pero la comunidad de Raku también publica muchos módulos. Hay módulos para muchas cosas, desde frameworks web hasta formatos de datos. Puedes instalarlos y usarlos en tus programas.

## Instalar con `zef`

Instalas los módulos con `zef`. `zef` es el gestor de módulos estándar. Viene con Rakudo. Para instalar un módulo, dale a `zef` el nombre del módulo:

```console
$ zef install JSON::Fast
```

`zef` descarga el módulo. También descarga todo lo que el módulo necesita. Después, ejecuta las pruebas del módulo. Luego instala el módulo. Entonces el módulo ya está en la ruta de búsqueda automáticamente. Así que un programa puede cargarlo solo con `use`. No necesitas la opción `-I`:

```raku
use JSON::Fast;
```

También puedes buscar en el ecosistema. El ecosistema son todos los módulos que la gente publica. Y puedes actualizar o eliminar módulos:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## De dónde vienen los módulos

Los módulos publicados están en el _ecosistema_ de Raku. Puedes mirarlo en el sitio web [raku.land](https://raku.land). El sitio web lista las distribuciones disponibles. Una distribución tiene uno o más módulos. El sitio web también muestra su documentación.

## `META6.json`

Una distribución para compartir tiene un archivo con una descripción. El archivo se llama `META6.json`. Tiene el nombre y la versión de la distribución. Lista los módulos de la distribución. También lista las otras distribuciones que necesita. `zef` lee este archivo. Así sabe qué instalar. También sabe cómo encajan las partes. A lo mejor quieres publicar tu propio módulo. Entonces dale un `META6.json` correcto. Con este archivo, todos los demás pueden instalar tu módulo.

{% include nav.html %}
