---
title: 'Lösung: Prüfen Sie den Exit-Code'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Du findest den Quellcode in der Datei [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Ausgabe

```
4
failure
```

## Kommentare

1. `run` gibt ein `Proc` zurück. Wir behalten es in `$proc` und lesen es dann. Das ist hier wichtig. Ein Befehl kann fehlschlagen. Wenn niemand sein `Proc` behält, wirft Raku eine Ausnahme. Eine Ausnahme ist ein Fehler, der das Programm anhält. Aber hier sehen wir uns das Ergebnis an. Das zählt als Behandlung des Fehlschlags.

1. `.exitcode` gibt die Zahl, die der Befehl zurückgegeben hat. Hier ist sie `4`. Sie können das `Proc` auch als Wahrheitswert prüfen. Ein Wahrheitswert ist wahr oder falsch. Das beantwortet eine einfachere Frage: Hat der Befehl funktioniert? Das `Proc` ist nur dann wahr, wenn der Exit-Code `0` ist. Hier ist es falsch. Also gibt das Programm `failure` aus.

{% include nav.html %}
