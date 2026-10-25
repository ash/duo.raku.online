---
title: Wie man Rakudo installiert
translations_gpt:
---

{% include menu.html %}

Um ein Programm in Raku auszuführen, müssen Sie einen Compiler installieren. Dieser Kurs verwendet Rakudo. Die beiden anderen, [Raku++](/de/essentials/the-rakupp-compiler) und [mutsu](/de/essentials/the-mutsu-interpreter), werden getrennt installiert. Siehe [Wie man Raku++ installiert](/de/essentials/how-to-install-rakupp) und [Wie man mutsu installiert](/de/essentials/how-to-install-mutsu). Besuchen Sie [die Website von Rakudo](https://rakudo.org) und laden Sie die Version für Ihr Betriebssystem herunter.

## Quellen

Ein Installationsprogramm für Ihr System können Sie unter [rakudo.org/downloads](https://rakudo.org/downloads) herunterladen. Es gibt Versionen für alle wichtigen Betriebssysteme: Windows, Mac OS und Linux. Sie können auch den Quellcode holen und ihn selbst kompilieren.

## Docker-Images

Rakudo gibt es auch als Docker-Image. Damit können Sie Programme ausführen. Es ist auch gut, um kleine Skripte in einer REPL-Shell zu testen. Alle Anleitungen finden Sie unter [github.com/Raku/docker](https://github.com/Raku/docker).

## Versionsnummern

Eine Versionsnummer von Rakudo hat zwei Teile: das Jahr und den Monat der Veröffentlichung. So sehen Sie leicht, wie neu Ihr Compiler ist. Führen Sie diesen Befehl aus, um seine Versionsnummer zu sehen:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Hier sehen Sie drei Versionsnummern. Die erste ist die Version von Rakudo selbst: `v2026.06`. Dann folgt die Version der Sprache Raku: `v6.d`. Im Moment bekommen Updates den nächsten Buchstaben als Nebenversion. Die nächste ist zum Beispiel `v6.e` und so weiter. Zuletzt sehen Sie den Namen der virtuellen Maschine in diesem Compiler: MoarVM in der Version `2026.06`.

{% include nav.html %}
