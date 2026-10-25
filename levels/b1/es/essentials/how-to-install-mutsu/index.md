---
title: Cómo instalar mutsu
translations_gpt:
---

{% include menu.html %}

mutsu ofrece versiones ya compiladas para macOS y Linux. Hay versiones tanto para procesadores Intel/AMD como ARM. Están en la página de versiones de su repositorio de GitHub, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Cada una contiene dos archivos ejecutables: el propio `mutsu` y `mzef`, su gestor de paquetes.

## Con mise

La forma más sencilla de instalar una versión es [mise](https://mise.jdx.dev/). Es una herramienta que instala y actualiza herramientas de desarrollo. Un solo comando descarga la versión para tu máquina. También pone `mutsu` y `mzef` en tu `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Con Docker

Si tu sistema tiene Docker, puedes usar mutsu sin instalarlo. Esto también funciona en Windows. Este comando inicia el REPL interactivo:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Y esto ejecuta un programa del directorio actual:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Compilar a partir del código fuente

mutsu está escrito en Rust. Así que también puedes compilarlo tú mismo con Cargo. El código fuente está en su repositorio, que también explica los detalles.

## Números de versión

La opción `--version` muestra qué versión tienes:

```console
$ mutsu --version
mutsu 0.24.0
```

Esta es la versión del propio mutsu. Como con los otros compiladores, el lenguaje puede decirte su versión:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Compáralo con cómo se presentan [Rakudo](/es/essentials/how-to-install-rakudo) y [Raku++](/es/essentials/how-to-install-rakupp).

{% include nav.html %}
