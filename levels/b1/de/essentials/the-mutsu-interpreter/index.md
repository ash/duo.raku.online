---
title: Der mutsu-Interpreter
translations_gpt:
---

{% include menu.html %}

**mutsu** ist eine dritte Implementierung von Raku, von Tokuhiro Matsuno in **Rust** geschrieben. Wie Rakudo übersetzt er Ihr Programm in Bytecode und führt es auf einer virtuellen Maschine aus. Aber diese virtuelle Maschine ist nicht MoarVM. Es ist die eigene Maschine von mutsu, eingebaut in die ausführbare Datei `mutsu`.

mutsu unterstützt Raku 6.d und wird noch aktiv entwickelt. Sein Autor sagt offen, dass mutsu noch nicht für echte Projekte bereit ist. Aber mutsu besteht schon fast alle Roast-Testdateien. Deshalb laufen fast alle Programme dieses Kurses ohne Änderungen darauf.

Eine Lücke ist beim Lernen wichtig: Einige Prüfungen zur Kompilierzeit fehlen noch. Die auffälligste in Version 0.24.0 ist diese. Stellen Sie sich vor, Sie vergessen, eine Variable zu deklarieren. Rakudo und Raku++ melden das, bevor das Programm läuft. Aber mutsu tut das nicht. Wenn der Kurs so einen Fehler zeigt, probieren Sie das Beispiel mit Rakudo oder Raku++ aus.

## Raku im Browser

mutsu lässt sich auch nach WebAssembly kompilieren. Dann läuft er in einer Webseite. Seine Website, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), nutzt das auf mehrere Arten. Sie hat eine Einführung in Raku auf Englisch und Japanisch. Es gibt auch ein Tutorial zum Mitmachen. Und es gibt einen Spielplatz, auf dem Sie Raku ausführen können, ohne etwas zu installieren. Alles auf diesen Seiten läuft mit mutsu selbst.

## Module

mutsu bringt eine eigene Kopie des Paketmanagers zef mit, die `mzef` heißt. So können Sie Raku-Module dafür auf die übliche Weise installieren. Tippen Sie einfach `mzef install` und den Namen des Moduls.

## Quellcode

mutsu ist quelloffen. Sie finden ihn unter [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Dort gibt es auch Release-Builds und eine Bauanleitung.

{% include nav.html %}
