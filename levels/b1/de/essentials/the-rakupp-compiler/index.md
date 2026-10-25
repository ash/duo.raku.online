---
title: Der Raku++-Compiler
translations_gpt:
---

{% include menu.html %}

**Raku++** ist ein zweiter Raku-Compiler. Seine ausführbare Datei heißt `rakupp`, und er erschien zum ersten Mal im Juli 2026. Rakudo läuft auf der virtuellen Maschine MoarVM. Raku++ dagegen ist in **C++** geschrieben. Er braucht keine eigene virtuelle Maschine.

Er ist zugleich **Interpreter** und **Compiler**. Er kann ein Programm direkt ausführen. Oder er kann es für mehr Geschwindigkeit in nativen Code übersetzen. Es gibt keine schwere Laufzeitumgebung, die erst starten muss. Deshalb startet `rakupp` in nur wenigen Millisekunden. Das macht ihn angenehm für kurze Skripte und die tägliche Arbeit im Terminal. Sein Autor nennt ihn den schnellsten Raku-Compiler.

Standardmäßig unterstützt Raku++ Raku 6.d. Er unterstützt 6.e, wenn ein Programm mit `use v6.e.PREVIEW` danach fragt. Version 5.4.1 ist im Oktober 2026 erschienen. Sie besteht alle 1.425 Testdateien der Roast-Testsuite. Roast ist die offizielle Sammlung von Raku-Tests.

Raku++ läuft auch in einem Webbrowser. Er wird nach WebAssembly kompiliert und steckt hinter dem Spielplatz auf [raku.online](https://raku.online). Dort können Sie Raku ausprobieren, ohne etwas zu installieren.

## Interpreter- und Compiler-Modus

Sie können ein Programm sofort ausführen, genau wie mit Rakudo:

```console
$ rakupp hello.raku
```

Oder lassen Sie Raku++ aus einem Programm eine eigene native ausführbare Datei machen. Sie läuft noch schneller:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Zum alltäglichen Lernen reicht der einfache Interpreter-Modus völlig. Die Compiler-Modi sind da, wenn Sie mehr Geschwindigkeit wollen.

## Quellcode

Raku++ ist quelloffen. Sie finden ihn unter [github.com/ash/rakupp](https://github.com/ash/rakupp). Dort gibt es auch fertige Release-Dateien und eine Bauanleitung.

{% include nav.html %}
