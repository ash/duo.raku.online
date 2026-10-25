---
title: 'Solution: Doppelte Verneinung'
---

{% include menu.html %}

Um den zweiten Teil der Übung zu lösen, erweitern wir das Programm. Wir können dieselbe Variable wieder verwenden:

## Code

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Den vollständigen Code finden Sie in der Datei [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Kommentare

Bevor Sie das Programm ausführen, überlegen wir, was es ausgeben wird. Vor der Variablen stehen zwei Verneinungsoperatoren. Sie wirken als zwei getrennte Verneinungen. Im ersten Fall ändert sich der Wert von `False` zu `True`. Dann ändert er sich sofort wieder von `True` zu `False`. Der zweite Fall funktioniert genauso. Nach zwei Verneinungen erhalten wir den ursprünglichen Booleschen Wert.

## Ausgabe

Das Programm gibt die folgende Ausgabe aus, die zeigt, dass wir recht hatten:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
