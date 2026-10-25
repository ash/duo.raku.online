---
title: Raku, Rakudo, Raku++ und mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** ist der Name der Programmiersprache. Ein **Compiler** ist ein Programm. Er liest Ihren Code und führt ihn aus. Raku kann mehr als einen Compiler haben. Dieser Kurs verwendet **Rakudo**, den älteren und bekannten Compiler. Es gibt auch neuere: **Raku++** und **mutsu**.

## Mehr als ein Compiler

Der Entwurf von Raku sagt nicht, welchen Compiler man benutzen soll. Zu den Entwurfsdokumenten gehört eine Sammlung von Tests. Diese Sammlung heißt Roast. Jeder kann einen Compiler schreiben. Wenn er diese Tests besteht, ist er ein Raku-Compiler.

Lange Zeit war Rakudo der einzige vollständige und stabile Compiler. Jetzt stimmt das nicht mehr. Im Juli 2026 ist ein zweiter Compiler erschienen: **Raku++**. Sein Autor hat ihn in C++ geschrieben. Seine Programmdatei heißt `rakupp`. Version 5.4.1 besteht alle Roast-Tests. Er startet auch sehr schnell. Dieser Kurs verwendet Rakudo für seine Beispiele. Aber Sie lernen die Sprache Raku selbst. Fast alles davon läuft auch auf Raku++, ohne Änderungen.

Es gibt auch noch einen dritten: **mutsu**. Er ist ein Interpreter. Tokuhiro Matsuno hat ihn in Rust geschrieben. Er übersetzt Raku-Code in Bytecode. Dann führt seine eigene virtuelle Maschine diesen Bytecode aus. Sie können ihn auch in einem Webbrowser ausführen, mit WebAssembly. Seine Website hat ein Raku-Tutorial und einen Spielplatz. Beide laufen auf mutsu. Der Autor arbeitet noch viel daran. Der Autor sagt: mutsu ist noch nicht bereit für echte Projekte. Aber er besteht schon fast alle Roast-Testdateien.

Die nächsten Seiten zeigen alle drei: Rakudo, Raku++ und mutsu. Sie zeigen auch, wie man sie installiert.

## Externe Links

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ auf GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
