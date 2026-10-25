---
title: Wie man mutsu installiert
translations_gpt:
---

{% include menu.html %}

mutsu hat fertige Builds für macOS und Linux. Sie laufen auf Intel/AMD- und auf ARM-Prozessoren. Das Projekt ist auf GitHub: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Die Builds finden Sie auf seiner Releases-Seite. Jeder Build hat zwei Programmdateien: `mutsu` selbst und `mzef`. `mzef` ist sein Paketmanager. Er installiert Raku-Module.

## Mit mise

Am einfachsten installieren Sie eine Veröffentlichung mit [mise](https://mise.jdx.dev/). Dieses Werkzeug installiert und aktualisiert Werkzeuge für Entwickler. Sie brauchen nur einen Befehl. Er lädt den Build für Ihren Computer herunter. Er fügt auch `mutsu` und `mzef` zu Ihrem `PATH` hinzu:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Mit Docker

Mit Docker können Sie mutsu ohne Installation benutzen. Das geht auf jedem System mit Docker, auch unter Windows. Dieser Befehl startet die interaktive REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Und dieser Befehl führt ein Programm aus dem aktuellen Verzeichnis aus:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Aus dem Quellcode bauen

mutsu ist in Rust geschrieben. Deshalb können Sie ihn auch selbst mit Cargo bauen. Nehmen Sie dazu den Quellcode aus seinem Repository. Das Repository erklärt die Einzelheiten.

## Versionsnummern

Welche Version haben Sie? Nutzen Sie die Option `--version`:

```console
$ mutsu --version
mutsu 0.24.0
```

Das ist die Veröffentlichung von mutsu selbst. Die Version der Sprache Raku ist etwas anderes. Sie fragen die Sprache danach, wie bei den anderen Compilern:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Vergleichen Sie das mit [Rakudo](/de/essentials/how-to-install-rakudo) und [Raku++](/de/essentials/how-to-install-rakupp). Sehen Sie, wie sie ihre Versionen zeigen.

{% include nav.html %}
