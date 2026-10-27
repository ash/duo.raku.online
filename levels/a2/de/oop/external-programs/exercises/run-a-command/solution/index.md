---
title: 'Lösung: Führen Sie einen Befehl aus'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `run` startet `echo` direkt. Dabei übergibt `run` jede Zeichenkette als eigenes Argument. Es gibt kein `:out`. Also geht die Ausgabe des Programms direkt auf den Bildschirm.

1. Das Argument kommt genau so bei `echo` an, wie Sie es geschrieben haben. Also gibt das Programm `$HOME` unverändert aus. Nichts ersetzt `$HOME` durch Ihr Heimatverzeichnis. Denn hier gibt es keine Shell. Eine Shell würde die Variable ersetzen. Darum ist `run` die sichere Standardwahl. Mit `shell` kann derselbe Befehl ganz anders arbeiten.

1. Möchten Sie das Heimatverzeichnis wirklich ausgeben? Dann lassen Sie eine Shell die Variable ersetzen. `shell 'echo home: $HOME'` gibt etwas wie `home: /home/anna` aus. Behalten Sie auch die einfachen Anführungszeichen im Raku-Code. Mit doppelten Anführungszeichen, `"$HOME"`, gibt es ein Problem. Raku selbst versucht dann, seine eigene Variable `$HOME` in die Zeichenkette einzusetzen. Das passiert, noch bevor `echo` überhaupt läuft.

{% include nav.html %}
