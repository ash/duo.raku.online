---
title: Cómo instalar Raku++
translations_gpt:
---

{% include menu.html %}

Puedes obtener Raku++ de su sitio web, [raku.online](https://raku.online). También está en GitHub: [github.com/ash/rakupp](https://github.com/ash/rakupp). Cuando lo instalas, recibes un solo archivo de programa: `rakupp`. No necesitas configurar nada más. Raku++ no tiene ninguna máquina virtual aparte para instalar.

## El instalador

En macOS, Linux y los sistemas BSD, solo necesitas un comando. Descarga la versión para tu ordenador. Comprueba la versión. Después pone `rakupp` en tu `PATH`. No necesita permisos de administrador:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

En Windows, usa en cambio una ventana de PowerShell. Otra forma es el programa de instalación, `rakupp-setup-windows-x64.exe`. Puedes descargarlo de la página de versiones del repositorio. Este es el comando para PowerShell:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

El instalador te pregunta si también quieres el nombre `raku` para Raku++. Después, abre una terminal nueva. Así el nuevo `PATH` empieza a funcionar. Más adelante, `rakupp upgrade` lo actualiza a la versión más nueva.

## Otras formas de instalarlo

* En macOS, con Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Con Docker, no necesitas instalar nada. `docker run --rm -it ghcr.io/ash/rakupp` inicia el REPL interactivo.
* Hay archivos comprimidos ya preparados para cada plataforma. Están en la página de versiones del repositorio.
* Raku++ está escrito en C++. Así que también puedes compilarlo tú mismo a partir del código fuente. El repositorio dice qué herramientas necesitas.

## Números de versión

¿Qué versión tienes? Usa la opción `--version`:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

La línea muestra tres cosas. La primera es la versión del propio Raku++: `5.4.1`. La segunda es la fecha de la compilación. La tercera es la plataforma de este archivo de programa. La versión del lenguaje Raku es otra cosa. Puedes preguntarle al propio lenguaje:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Compara esto con el mensaje de versión de Rakudo. Está en la [página de instalación de Rakudo](/es/essentials/how-to-install-rakudo). Puedes ver cómo muestran sus versiones los dos compiladores.

{% include nav.html %}
