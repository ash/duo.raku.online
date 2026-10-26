---
title: 'Solution: Gerade, ungerade oder null'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Du findest den Quellcode in der Datei [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Ausgabe

```
even
```

## Kommentare

1. `when 0` passt nur auf einen Wert, auf null. Es steht an erster Stelle. Null ist auch gerade, aber wir wollen sie getrennt zeigen.

1. `when $_ %% 2` ist eine Bedingung. Hier ist `$_` das Thema von `given`. Der Operator `%%` prüft, ob das Thema ohne Rest durch zwei teilbar ist. Der Wert `12` ist nicht null. Aber er ist durch zwei teilbar. Also gibt das Programm `even` aus.

1. `default` ist für alle anderen Zahlen. Sie sind nicht null und nicht gerade. Also sind das die ungeraden Zahlen.

{% include nav.html %}
