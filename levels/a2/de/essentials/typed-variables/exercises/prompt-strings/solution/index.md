---
title: 'Solution: Das Ergebnis von `prompt` untersuchen — Zeichenketten'
---

{% include menu.html %}

## Code

Hier ist das ganze Programm. Es erledigt die Aufgabe. Es gibt deine Eingabe und ihren Typ aus.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 Den Quellcode findest du in der Datei [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Testläufe

Führe das Programm zwei- oder dreimal aus. Gib verschiedene Namen ein. Das Programm gibt deine Eingabe wieder aus. Es sagt dir auch, dass die Variable einen String enthält. Mit anderen Worten, es ist ein Objekt vom Typ `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Führe das Programm jetzt noch einmal aus. Gib ein paar Leerzeichen statt eines Namens ein. Dann drücke die Eingabetaste.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

Wir sehen die Ausgabe nicht. Aber wir sehen den Typ der Variable. Er ist immer noch `Str`.

{% include nav.html %}
