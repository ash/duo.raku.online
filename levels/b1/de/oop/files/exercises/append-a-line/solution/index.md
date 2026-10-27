---
title: 'Lösung: Bauen Sie ein Protokoll auf'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Du findest den Quellcode in der Datei [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Ausgabe

```
start
entry 1
entry 2
entry 3
```

## Kommentare

1. Das erste `spurt` legt eine neue Datei an, die die Zeile `start` enthält.

1. Jedes `spurt` in der Schleife verwendet `:append`. Also setzt es seine Zeile hinter den bestehenden Inhalt und ersetzt die Datei nicht. Genau so wächst eine Protokolldatei. Jede Runde der Schleife fügt am Ende eine weitere Zeile hinzu. Das Gleiche tut jeder Lauf eines Programms.

1. Ohne `:append` würde jede Runde die Datei überschreiben. Nur die letzte Zeile bliebe übrig.

{% include nav.html %}
