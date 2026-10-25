---
title: Cómo instalar Raku++
translations_gpt:
---

{% include menu.html %}

Raku++ está disponible en su sitio web, [raku.online](https://raku.online). También puedes obtenerlo de su repositorio de GitHub, [github.com/ash/rakupp](https://github.com/ash/rakupp). Cuando lo instalas, obtienes un único archivo ejecutable llamado `rakupp`. No hace falta configurar nada más, porque Raku++ no tiene una máquina virtual aparte.

## El instalador

En macOS, Linux y los sistemas BSD, un solo comando lo hace todo. Descarga la versión para tu máquina y la verifica. Después pone `rakupp` en tu `PATH`. Para esto no necesitas permisos de administrador:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

En Windows, usa en cambio una ventana de PowerShell. También puedes usar el asistente de instalación, `rakupp-setup-windows-x64.exe`. Está en la página de versiones del repositorio. En PowerShell, ejecuta esto:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

El instalador te pregunta si también quieres tener Raku++ con el nombre `raku`. Después, abre una terminal nueva para que el nuevo `PATH` empiece a funcionar. Más adelante, `rakupp upgrade` lo cambia por la versión más reciente.

## Otras formas de instalarlo

* En macOS, con Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Con Docker, no tienes que instalar nada: `docker run --rm -it ghcr.io/ash/rakupp` inicia el REPL interactivo.
* En la página de versiones del repositorio hay archivos comprimidos ya preparados para cada plataforma.
* Raku++ está escrito en C++. Así que también puedes compilarlo tú mismo a partir del código fuente. El repositorio explica qué herramientas necesitas.

## Números de versión

La opción `--version` muestra qué versión tienes:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

La línea muestra la versión del propio Raku++, `5.4.1`. También muestra la fecha de compilación y la plataforma del binario. La versión del lenguaje Raku es otra cosa. Puedes preguntarle al propio lenguaje:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Compara esto con el mensaje de versión de Rakudo en la [página de instalación de Rakudo](/es/essentials/how-to-install-rakudo). Así puedes ver cómo se presenta cada compilador.

{% include nav.html %}
