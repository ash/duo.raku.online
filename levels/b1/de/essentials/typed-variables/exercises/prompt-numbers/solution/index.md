---
title: 'Solution: Das Ergebnis von `prompt` untersuchen — Zahlen'
---

{% include menu.html %}

## Code

Hier ist das vollständige Programm. Es löst das Problem und gibt sowohl den eingegebenen Wert als auch seinen Typ aus.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Du findest den Quellcode in der Datei [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Testläufe

Führe das Programm mehrmals aus und gib Zahlen verschiedenen Typs ein.

### Ganze Zahlen

Versuchen wir zuerst ganze Zahlen, sowohl positive als auch negative.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Das Ergebnis hat den Typ `IntStr`. Dieser eingebaute Typ hat sowohl die Eigenschaften von `Int` als auch von `Str`.

### Rationale Zahlen

Versuchen wir nun eine rationale Zahl. Denk daran, dass in Raku die Schreibweise mit Dezimalpunkt eine `Rat`-Zahl ergibt. Das ist keine Gleitkommazahl.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Diesmal sagt das Programm, dass die Daten in `$n` den Typ `RatStr` haben. Das ist ein kombinierter Typ aus `Rat` und `Str`.

### Gleitkommazahlen

Versuche schließlich eine Zahl in wissenschaftlicher Notation. Inzwischen kannst du die Ausgabe wahrscheinlich erraten.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Wie erwartet ist der neue Wert vom Typ `NumStr`.

{% include nav.html %}
