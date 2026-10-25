---
title: Der Raku++-Compiler
translations_gpt:
---

{% include menu.html %}

**Raku++** ist ein zweiter Raku-Compiler. Seine Programmdatei heißt `rakupp`. Die erste Version ist im Juli 2026 erschienen. Rakudo läuft auf der virtuellen Maschine MoarVM. Raku++ ist anders. Sein Autor hat ihn in **C++** geschrieben. Raku++ braucht keine eigene virtuelle Maschine.

Er ist gleichzeitig ein **Interpreter** und ein **Compiler**. Er kann ein Programm direkt ausführen. Er kann ein Programm auch in nativen Code umwandeln. Das macht es schneller. Er muss nicht zuerst ein großes Laufzeitsystem starten. Deshalb startet `rakupp` in nur wenigen Millisekunden. Das macht ihn praktisch für kurze Skripte. Er ist auch praktisch für die tägliche Arbeit auf der Befehlszeile. Sein Autor nennt ihn den schnellsten Raku-Compiler.

Normalerweise unterstützt Raku++ Raku 6.d. Er unterstützt auch 6.e. Ein Programm fragt mit `use v6.e.PREVIEW` nach 6.e. Version 5.4.1 ist im Oktober 2026 erschienen. Sie besteht alle 1.425 Testdateien von Roast. Roast ist die offizielle Sammlung von Raku-Tests.

Raku++ läuft auch in einem Webbrowser. Dafür ist er nach WebAssembly kompiliert. Der Spielplatz auf [raku.online](https://raku.online) läuft damit. Dort können Sie Raku ohne Installation ausprobieren.

## Interpreter- und Compiler-Modus

Führen Sie ein Programm direkt aus, wie mit Rakudo:

```console
$ rakupp hello.raku
```

Oder lassen Sie Raku++ eine native Programmdatei machen. Sie läuft für sich allein. Und sie ist noch schneller:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Zum täglichen Lernen brauchen Sie nur den einfachen Interpreter-Modus. Die Compiler-Modi sind für mehr Geschwindigkeit.

## Quellcode

Raku++ ist quelloffen. Sie finden ihn unter [github.com/ash/rakupp](https://github.com/ash/rakupp). Die Seite hat auch Release-Dateien und eine Anleitung zum Bauen.

{% include nav.html %}
