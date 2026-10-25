---
title: Cómo instalar mutsu
translations_gpt:
---

{% include menu.html %}

mutsu tiene versiones ya compiladas para macOS y Linux. Funcionan en procesadores Intel/AMD y también ARM. El proyecto está en GitHub: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Puedes encontrarlas en su página de versiones. Cada una tiene dos archivos de programa: el propio `mutsu` y `mzef`. `mzef` es su gestor de paquetes. Instala módulos de Raku.

## Con mise

La forma más fácil de instalar una versión es [mise](https://mise.jdx.dev/). Esta herramienta instala y actualiza herramientas para desarrolladores. Solo necesitas un comando. Descarga la versión para tu ordenador. También pone `mutsu` y `mzef` en tu `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Con Docker

Con Docker, puedes usar mutsu sin instalarlo. Esto funciona en cualquier sistema con Docker, también en Windows. Este comando inicia el REPL interactivo:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Y este comando ejecuta un programa del directorio actual:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Compilar a partir del código fuente

mutsu está escrito en Rust. Así que también puedes compilarlo tú mismo con Cargo. Usa el código fuente de su repositorio. El repositorio explica los detalles.

## Números de versión

¿Qué versión tienes? Usa la opción `--version`:

```console
$ mutsu --version
mutsu 0.24.0
```

Esta es la versión del propio mutsu. La versión del lenguaje Raku es otra cosa. Le preguntas al lenguaje, como con los otros compiladores:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Compara esto con [Rakudo](/es/essentials/how-to-install-rakudo) y [Raku++](/es/essentials/how-to-install-rakupp). Mira cómo muestran sus versiones.

{% include nav.html %}
