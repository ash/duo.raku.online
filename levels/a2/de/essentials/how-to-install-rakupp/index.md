---
title: Wie man Raku++ installiert
translations_gpt:
---

{% include menu.html %}

Sie bekommen Raku++ auf seiner Website, [raku.online](https://raku.online). Er ist auch auf GitHub: [github.com/ash/rakupp](https://github.com/ash/rakupp). Wenn Sie ihn installieren, bekommen Sie eine Programmdatei: `rakupp`. Sie müssen nichts anderes einrichten. Bei Raku++ müssen Sie keine eigene virtuelle Maschine installieren.

## Das Installationsprogramm

Unter macOS, Linux und den BSD-Systemen brauchen Sie nur einen Befehl. Er lädt den Build für Ihren Computer herunter. Er prüft den Build. Dann fügt er `rakupp` zu Ihrem `PATH` hinzu. Er braucht keine Administratorrechte:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Unter Windows nehmen Sie stattdessen ein PowerShell-Fenster. Ein anderer Weg ist das Setup-Programm, `rakupp-setup-windows-x64.exe`. Sie können es von der Releases-Seite des Repositorys herunterladen. Hier ist der Befehl für PowerShell:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Das Installationsprogramm fragt, ob Sie für Raku++ auch den Namen `raku` wollen. Öffnen Sie danach ein neues Terminal. Dann funktioniert der neue `PATH`. Später bringt `rakupp upgrade` ihn auf die neueste Veröffentlichung.

## Andere Installationswege

* Unter macOS mit Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Mit Docker müssen Sie nichts installieren. `docker run --rm -it ghcr.io/ash/rakupp` startet die interaktive REPL.
* Es gibt fertige Archive für jede Plattform. Sie liegen auf der Releases-Seite des Repositorys.
* Raku++ ist in C++ geschrieben. Deshalb können Sie ihn auch selbst aus dem Quellcode bauen. Das Repository sagt, welche Werkzeuge Sie brauchen.

## Versionsnummern

Welche Version haben Sie? Nutzen Sie die Option `--version`:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

Die Zeile zeigt drei Dinge. Das erste ist die Veröffentlichung von Raku++ selbst: `5.4.1`. Das zweite ist das Datum des Builds. Das dritte ist die Plattform für diese Programmdatei. Die Version der Sprache Raku ist etwas anderes. Sie können die Sprache selbst fragen:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Vergleichen Sie das mit der Versionsmeldung von Rakudo. Sie steht auf der [Seite zur Rakudo-Installation](/de/essentials/how-to-install-rakudo). So sehen Sie, wie die beiden Compiler ihre Versionen zeigen.

{% include nav.html %}
