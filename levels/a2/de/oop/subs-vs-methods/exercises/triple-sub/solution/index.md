---
title: 'Lösung: Verdreifachen als Subroutine'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 Du findest den Quellcode in der Datei [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Ausgabe

```
21
```

## Kommentare

1. Hier ist `triple` eine Subroutine. Sie steht allein. Sie bekommt den Wert für ihre Arbeit als Argument.

1. Die andere Übung löst dieselbe Aufgabe mit einer Methode. So können Sie die beiden Wege vergleichen.

{% include nav.html %}
