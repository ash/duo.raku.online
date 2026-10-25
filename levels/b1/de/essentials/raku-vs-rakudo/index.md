---
title: Raku, Rakudo, Raku++ und mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** ist der Name der Programmiersprache. Ein **Compiler** ist das Programm, das Ihren Code liest und ausführt. Raku ist nicht an einen einzigen Compiler gebunden. Dieser Kurs verwendet **Rakudo**, den es schon seit vielen Jahren gibt. Es gibt auch neuere: **Raku++** und **mutsu**.

## Mehr als ein Compiler

Der Entwurf von Raku sagt nicht, welchen Compiler Sie verwenden müssen. Zu seinen Entwurfsdokumenten gehört eine Sammlung von Tests namens Roast. Jeder kann einen Compiler schreiben. Wenn er diese Tests besteht, ist er ein Raku-Compiler.

Lange Zeit war Rakudo der einzige vollständige und stabile Compiler. Jetzt ist das nicht mehr so. Im Juli 2026 erschien ein zweiter Compiler: **Raku++**, geschrieben in C++. Seine ausführbare Datei heißt `rakupp`. Version 5.4.1 besteht die ganze Roast-Testsammlung. Er startet auch erstaunlich schnell. Dieser Kurs verwendet Rakudo für seine Beispiele. Aber was Sie lernen, ist die Sprache Raku selbst. Fast alles davon läuft auch ohne Änderungen auf Raku++.

Es gibt auch eine dritte Implementierung, **mutsu**. Es ist ein Interpreter, den Tokuhiro Matsuno in Rust geschrieben hat. Er übersetzt Raku in Bytecode für seine eigene virtuelle Maschine. Dank WebAssembly läuft er auch in einem Webbrowser. Seine Website hat ein Raku-Tutorial und einen Spielplatz, die darauf aufbauen. Das Projekt wird noch aktiv entwickelt. Sein Autor sagt, dass mutsu noch nicht für echte Projekte bereit ist. Aber mutsu besteht schon fast alle Roast-Testdateien.

Die nächsten Seiten betrachten die drei nacheinander: Rakudo, Raku++ und mutsu. Sie erklären auch, wie man sie installiert.

## Externe Links

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ auf GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
