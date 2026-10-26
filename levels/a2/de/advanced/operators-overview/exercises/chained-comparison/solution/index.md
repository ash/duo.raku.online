---
title: 'Solution: Verketteter Vergleich'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Sie können Vergleichsoperatoren verketten. Also bedeutet `0 <= 73 <= 100`: „0 ist höchstens 73, und 73 ist höchstens 100“. Der Operator `<=` erlaubt auch die Enden. Also ist auch ein Ergebnis von genau `0` oder `100` gültig.

1. Beide Teile sind wahr. Also ist der ganze Ausdruck `True`. Sehen Sie sich den mittleren Wert an, `73`. Sie schreiben ihn nur einmal. Aber Raku vergleicht ihn mit beiden Werten neben ihm.

1. Ohne Verkettung müssen Sie beide Vergleiche schreiben. Sie verbinden sie mit `&&`. Und Sie schreiben den mittleren Wert zweimal: `0 <= 73 && 73 <= 100`. Die verkettete Form sagt dasselbe kürzer.

{% include nav.html %}
