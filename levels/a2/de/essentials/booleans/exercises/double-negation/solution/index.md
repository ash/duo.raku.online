---
title: 'Solution: Doppelte Verneinung'
---

{% include menu.html %}

Fügen wir Code für den zweiten Teil der Aufgabe hinzu. Wir verwenden wieder dieselbe Variable:

## Code

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Den vollständigen Code finden Sie in der Datei [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Kommentare

Führen Sie das Programm noch nicht aus. Überlegen wir zuerst: Was gibt es aus? Vor der Variablen stehen zwei Verneinungsoperatoren. Eine Verneinung ändert `False` in `True` und `True` in `False`. Hier wirken die zwei `!` als zwei getrennte Verneinungsoperatoren. Im ersten Fall ändert die erste Verneinung `False` in `True`. Dann ändert die zweite Verneinung den Wert sofort zurück in `False`. Der zweite Fall funktioniert genauso. Nach zwei Verneinungen haben wir wieder den Booleschen Wert vom Anfang.

## Ausgabe

Hier ist die Ausgabe des Programms. Sie zeigt, dass wir recht hatten:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
