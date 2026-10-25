---
title: Wie man Rakudo installiert
translations_gpt:
---

{% include menu.html %}

Sie brauchen einen Compiler, um ein Raku-Programm auszuführen. Sie müssen ihn zuerst installieren. Dieser Kurs verwendet Rakudo. Es gibt auch [Raku++](/de/essentials/the-rakupp-compiler) und [mutsu](/de/essentials/the-mutsu-interpreter). Diese installieren Sie getrennt. Lesen Sie [Wie man Raku++ installiert](/de/essentials/how-to-install-rakupp) und [Wie man mutsu installiert](/de/essentials/how-to-install-mutsu). Gehen Sie auf [die Website von Rakudo](https://rakudo.org). Dort können Sie die richtige Version für Ihr Betriebssystem herunterladen.

## Quellen

Laden Sie ein Installationsprogramm für Ihr System von [rakudo.org/downloads](https://rakudo.org/downloads) herunter. Es gibt Versionen für alle wichtigen Betriebssysteme: Windows, Mac OS und Linux. Es gibt auch den Quellcode. Sie können ihn selbst kompilieren.

## Docker-Images

Sie können Rakudo auch als Docker-Image bekommen. Damit können Sie Programme ausführen. Sie können auch kleine Skripte in einer REPL-Shell testen. Alle Anleitungen finden Sie unter [github.com/Raku/docker](https://github.com/Raku/docker).

## Versionsnummern

Eine Versionsnummer von Rakudo hat zwei Teile. Das sind das Jahr und der Monat der Veröffentlichung. So sehen Sie leicht, wie neu Ihr Compiler ist. Führen Sie diesen Befehl aus, um die Versionsnummer zu sehen:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Hier sehen Sie drei Versionsnummern. Die erste ist die Version von Rakudo selbst: `v2026.06`. Dann kommt die Version der Sprache Raku: `v6.d`. Im Moment bekommt jedes Update der Sprache den nächsten Buchstaben. Dieser Buchstabe ist die Nebenversion, also der kleine Teil der Version. Zum Beispiel kommt als Nächstes `v6.e` und so weiter. Am Ende sehen Sie den Namen der virtuellen Maschine. Dieser Compiler verwendet MoarVM in der Version `2026.06`.

{% include nav.html %}
