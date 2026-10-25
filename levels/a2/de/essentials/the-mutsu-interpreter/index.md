---
title: Der mutsu-Interpreter
translations_gpt:
---

{% include menu.html %}

**mutsu** ist eine dritte Implementierung von Raku. Tokuhiro Matsuno hat ihn in **Rust** geschrieben. Wie Rakudo übersetzt er Ihr Programm in Bytecode. Dann führt er den Bytecode auf einer virtuellen Maschine aus. Aber diese Maschine ist nicht MoarVM. Es ist die eigene Maschine von mutsu. Sie ist Teil der Programmdatei `mutsu`.

mutsu unterstützt Raku 6.d. Sein Autor arbeitet noch viel daran. Das Programm ist noch nicht bereit für echte Projekte. Der Autor sagt das ganz klar. Aber es besteht schon fast alle Roast-Testdateien. Deshalb laufen fast alle Programme dieses Kurses ohne Änderungen darauf.

Ein fehlender Teil ist beim Lernen wichtig. Einige Prüfungen zur Kompilierzeit gibt es noch nicht. Diese Prüfungen laufen vor dem Start des Programms. Hier ist der deutlichste Fall in Version 0.24.0. Vielleicht vergessen Sie, eine Variable zu deklarieren. Rakudo und Raku++ melden das vor dem Start des Programms. Aber mutsu macht das nicht. Zeigt der Kurs so eine Fehlermeldung? Dann probieren Sie das Beispiel mit einem der beiden anderen Compiler aus.

## Raku im Browser

Sie können mutsu auch nach WebAssembly kompilieren. Dann läuft er in einer Webseite. Seine Website, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), nutzt das. Sie hat eine Einführung in Raku auf Englisch und Japanisch. Sie hat auch ein Tutorial. Darin probieren Sie Dinge selbst aus. Und sie hat einen Spielplatz. Dort können Sie Raku ohne Installation ausführen. Auf all diesen Seiten läuft mutsu selbst.

## Module

mutsu bringt eine eigene Kopie des Paketmanagers zef mit. Diese Kopie heißt `mzef`. So können Sie Raku-Module für mutsu wie gewohnt installieren. Tippen Sie `mzef install` und dann den Namen des Moduls.

## Quellcode

mutsu ist quelloffen. Sie finden ihn unter [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Die Seite hat auch Release-Builds und eine Bauanleitung.

{% include nav.html %}
