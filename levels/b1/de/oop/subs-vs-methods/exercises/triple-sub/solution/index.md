---
title: 'Lösung: Verdreifachen als Subroutine'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Als Subroutine steht `triple` für sich. Sie bekommt den Wert, mit dem sie arbeitet, als Argument.

1. Die andere Übung aus diesem Paar löst dieselbe Aufgabe mit einer Methode. So können Sie beide Ansätze vergleichen.

{% include nav.html %}
