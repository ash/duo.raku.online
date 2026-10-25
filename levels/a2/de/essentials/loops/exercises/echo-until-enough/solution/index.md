---
title: 'Solution: Echo bis genug'
---

{% include menu.html %}

Dieses Programm braucht eine Schleife. Die Schleife stoppt, wenn der Benutzer ein besonderes Wort eingibt.

## Code

Du kannst die Aufgabe mit `while`, `until` oder `repeat` lösen. Diese Wege sind sehr ähnlich. Hier ist einer davon.

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

Führe das Programm aus. Gib ein paar verschiedene Wörter ein. Beende dann die Schleife.

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

Beachte: Du erstellst die Variable `$word` _vor_ der Schleife. Der `while`-Test steht nicht im Körper der Schleife. Also kann der Test keine Variable aus der Schleife sehen.

{% include nav.html %}
