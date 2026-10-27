---
title: 'Lösung: Führen Sie einen Befehl aus'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
run 'echo', 'home:', '$HOME';
```

🦋 Du findest den Quellcode in der Datei [run-a-command.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/run-a-command.raku).

## Ausgabe

```
home: $HOME
```

## Kommentare

1. `run` startet `echo` direkt und übergibt jede Zeichenkette als eigenes Argument. Ohne `:out` geht die Ausgabe des Programms direkt auf den Bildschirm.

1. Das Argument erreicht `echo` genau so, wie es geschrieben ist. `$HOME` wird unverändert ausgegeben und nicht durch Ihr Heimatverzeichnis ersetzt. Das liegt daran, dass keine Shell da ist, die es ersetzen könnte. Deshalb ist `run` die sichere Standardwahl. Derselbe Befehl könnte sich mit `shell` ganz anders verhalten.

1. Um das Heimatverzeichnis wirklich auszugeben, lassen Sie eine Shell die Variable ersetzen. `shell 'echo home: $HOME'` gibt etwas wie `home: /home/anna` aus. Behalten Sie die einfachen Anführungszeichen auch auf der Raku-Seite. Ein `"$HOME"` in doppelten Anführungszeichen würde ein Problem verursachen. Raku selbst würde versuchen, eine Variable namens `$HOME` in die Zeichenkette einzusetzen. Das würde passieren, noch bevor `echo` überhaupt läuft.

{% include nav.html %}
