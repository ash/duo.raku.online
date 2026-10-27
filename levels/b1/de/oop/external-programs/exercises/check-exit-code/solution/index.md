---
title: 'Lösung: Prüfen Sie den Exit-Code'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `run` gibt ein `Proc` zurück. Hier ist es wichtig, es in `$proc` zu speichern und dann zu lesen. Wenn Sie das `Proc` eines fehlschlagenden Befehls wegwerfen, wirft es eine Ausnahme. Aber das Ergebnis anzusehen zählt als Behandlung.

1. `.exitcode` ist die Zahl, die der Befehl zurückgegeben hat: `4`. Wenn Sie das `Proc` als Wahrheitswert prüfen, beantwortet das eine einfachere Frage: Hat es funktioniert? Es ist nur dann wahr, wenn der Exit-Code `0` ist. Hier ist es falsch, also gibt das Programm `failure` aus.

{% include nav.html %}
