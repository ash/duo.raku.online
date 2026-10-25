---
title: 'Solution: Das Ergebnis von `prompt` untersuchen — Zeichenketten'
---

{% include menu.html %}

## Code

Hier ist das vollständige Programm. Es erledigt die Aufgabe und gibt sowohl den eingegebenen String als auch seinen Typ aus.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 Den Quellcode findest du in der Datei [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Testläufe

Führe das Programm ein paar Mal mit verschiedenen Namen aus. Das Programm wiederholt die Eingabe. Es meldet auch, dass die Variable einen String enthält. Mit anderen Worten, es ist ein Objekt vom Typ `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Führe das Programm nun noch einmal aus. Gib ein paar Leerzeichen anstelle eines Namens ein und drücke die Eingabetaste.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

Wir sehen die Ausgabe nicht. Aber wir können sehen, dass die Variable immer noch den Typ `Str` hat.

{% include nav.html %}
