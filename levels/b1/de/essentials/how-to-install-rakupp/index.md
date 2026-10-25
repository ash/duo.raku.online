---
title: Wie man Raku++ installiert
translations_gpt:
---

{% include menu.html %}

Raku++ gibt es auf seiner Website, [raku.online](https://raku.online). Sie können ihn auch aus seinem GitHub-Repository holen, [github.com/ash/rakupp](https://github.com/ash/rakupp). Wenn Sie ihn installieren, bekommen Sie eine einzige ausführbare Datei namens `rakupp`. Sonst müssen Sie nichts einrichten, denn Raku++ hat keine eigene virtuelle Maschine.

## Das Installationsprogramm

Unter macOS, Linux und den BSD-Systemen erledigt ein einziger Befehl alles. Er lädt den Build für Ihren Rechner herunter und prüft ihn. Dann fügt er `rakupp` zu Ihrem `PATH` hinzu. Sie brauchen dafür keine Administratorrechte:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Unter Windows verwenden Sie stattdessen ein PowerShell-Fenster. Sie können auch den Installationsassistenten verwenden, `rakupp-setup-windows-x64.exe`. Er liegt auf der Releases-Seite des Repositorys. Führen Sie in PowerShell Folgendes aus:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Das Installationsprogramm fragt, ob Sie Raku++ auch unter dem Namen `raku` haben möchten. Öffnen Sie danach ein neues Terminal, damit der neue `PATH` funktioniert. Später ersetzt `rakupp upgrade` ihn durch die neueste Veröffentlichung.

## Andere Installationswege

* Unter macOS mit Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Mit Docker müssen Sie gar nichts installieren: `docker run --rm -it ghcr.io/ash/rakupp` startet die interaktive REPL.
* Fertige Archive für jede Plattform liegen auf der Releases-Seite des Repositorys.
* Raku++ ist in C++ geschrieben. Deshalb können Sie ihn auch selbst aus dem Quellcode bauen. Das Repository erklärt, welche Werkzeuge Sie brauchen.

## Versionsnummern

Die Option `--version` zeigt, welche Version Sie haben:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

Die Zeile zeigt die Veröffentlichung von Raku++ selbst, `5.4.1`. Sie zeigt auch das Datum des Builds und die Plattform der Binärdatei. Die Version der Sprache Raku ist eine andere Sache. Sie können die Sprache selbst fragen:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Vergleichen Sie das mit der Versionsmeldung von Rakudo auf der [Seite zur Rakudo-Installation](/de/essentials/how-to-install-rakudo). Dann sehen Sie, wie sich die beiden Compiler melden.

{% include nav.html %}
