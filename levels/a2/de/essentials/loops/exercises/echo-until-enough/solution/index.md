---
title: 'Solution: Echo bis genug'
---

{% include menu.html %}

Dieses Programm braucht eine Schleife, die stoppt, wenn der Benutzer ein besonderes Wort eingibt.

## Code

Du kannst die Aufgabe auf mehrere ähnliche Arten lösen, mit `while`, `until` oder `repeat`. Hier ist eine davon.

```raku
my $word;
repeat {
    $word = prompt 'Dein Wort: ';
    say $word;
} while $word ne 'genug';

say 'OK, fertig.';
```

🦋 Finde das Programm in der Datei [echo-until-enough.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Ausgabe

Führe das Programm aus und gib ein paar verschiedene Wörter ein. Dann beende die Schleife.

```console
$ raku exercises/loops/echo-until-enough.raku
Dein Wort: dies
dies
Dein Wort: ist
ist
Dein Wort: mein
mein
Dein Wort: Wort
Wort
Dein Wort: genug
genug
OK, fertig.
```

## Kommentar

Beachte, dass du die Variable `$word` _vor_ der Schleife deklarierst. Der `while`-Test steht außerhalb des Schleifenkörpers. Wenn du die Variable in der Schleife definierst, kann der Test sie nicht sehen.

{% include nav.html %}
