---
title: 'Solution: Das Ergebnis von `prompt` untersuchen — Zahlen'
---

{% include menu.html %}

## Code

Hier ist das ganze Programm. Es löst das Problem. Es gibt deine Eingabe und ihren Typ aus.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Du findest den Quellcode in der Datei [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Testläufe

Führe das Programm ein paar Mal aus. Gib Zahlen verschiedener Typen ein.

### Ganze Zahlen

Versuchen wir zuerst ganze Zahlen. Probiere positive und negative Zahlen.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Der Typ des Ergebnisses ist `IntStr`. Dieser Typ ist in Raku eingebaut. Er hat die Eigenschaften von `Int` und von `Str`.

### Rationale Zahlen

Jetzt versuchen wir eine rationale Zahl. Denk daran: In Raku ist eine Zahl mit Dezimalpunkt ein `Rat`. Das ist keine Gleitkommazahl.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Diesmal haben die Daten in `$n` den Typ `RatStr`. Das ist ein kombinierter Typ. Er ist sowohl `Rat` als auch `Str`.

### Gleitkommazahlen

Zum Schluss versuche eine Zahl in wissenschaftlicher Notation, mit dem Buchstaben `e`. Jetzt kannst du die Ausgabe wahrscheinlich erraten.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Ja, der neue Wert hat den Typ `NumStr`.

{% include nav.html %}
