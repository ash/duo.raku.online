---
title: Wie man mutsu installiert
translations_gpt:
---

{% include menu.html %}

mutsu bietet fertige Builds für macOS und Linux an. Es gibt Builds sowohl für Intel/AMD- als auch für ARM-Prozessoren. Sie liegen auf der Releases-Seite seines GitHub-Repositorys, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Jeder Build enthält zwei ausführbare Dateien: `mutsu` selbst und `mzef`, seinen Paketmanager.

## Mit mise

Am einfachsten installieren Sie eine Veröffentlichung mit [mise](https://mise.jdx.dev/). Das ist ein Werkzeug, das Entwicklerwerkzeuge installiert und aktualisiert. Ein einziger Befehl lädt den Build für Ihren Rechner herunter. Er fügt auch `mutsu` und `mzef` zu Ihrem `PATH` hinzu:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Mit Docker

Wenn auf Ihrem System Docker läuft, können Sie mutsu verwenden, ohne ihn zu installieren. Das funktioniert auch unter Windows. Dieser Befehl startet die interaktive REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Und dieser führt ein Programm aus dem aktuellen Verzeichnis aus:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Aus dem Quellcode bauen

mutsu ist in Rust geschrieben. Deshalb können Sie ihn auch selbst mit Cargo bauen. Der Quellcode liegt in seinem Repository, das auch die Einzelheiten erklärt.

## Versionsnummern

Die Option `--version` zeigt, welche Version Sie haben:

```console
$ mutsu --version
mutsu 0.24.0
```

Das ist die Veröffentlichung von mutsu selbst. Wie bei den anderen Compilern kann Ihnen die Sprache ihre Version nennen:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Vergleichen Sie das damit, wie sich [Rakudo](/de/essentials/how-to-install-rakudo) und [Raku++](/de/essentials/how-to-install-rakupp) melden.

{% include nav.html %}
