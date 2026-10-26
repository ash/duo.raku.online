---
title: 'Solution: Verketteter Vergleich'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
say 0 <= 73 <= 100;
```

🦋 Den Quellcode finden Sie in der Datei [chained-comparison.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/chained-comparison.raku).

## Ausgabe

```
True
```

## Kommentare

1. Vergleichsoperatoren können verkettet werden. Also bedeutet `0 <= 73 <= 100`: „0 ist höchstens 73, und 73 ist höchstens 100“. Der Operator `<=` erlaubt die Endwerte. Also wäre auch ein Ergebnis von genau `0` oder `100` gültig.

1. Beide Teile sind wahr, also ist der ganze Ausdruck `True`. Beachten Sie, dass Sie den mittleren Wert `73` nur einmal schreiben. Trotzdem wird er mit seinen beiden Nachbarn verglichen.

1. Ohne Verkettung müssten Sie beide Vergleiche ausschreiben und mit `&&` verbinden. Dann wiederholen Sie den mittleren Wert: `0 <= 73 && 73 <= 100`. Die verkettete Form sagt dasselbe auf kürzere Weise.

{% include nav.html %}
