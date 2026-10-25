---
title: Typumwandlung mit Typumwandlungsmethoden
---

{% include menu.html %}

Um einen Wert in einen anderen Typ zu konvertieren oder zu _erzwingen_, rufen Sie eine Methode auf. Die Methode hat denselben Namen wie der Datentyp. Wandeln Sie zum Beispiel einen String in eine ganze Zahl um:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

In vielen Fällen müssen Sie Werte nicht selbst konvertieren. Raku übernimmt diese Arbeit für Sie. Der folgende Code funktioniert richtig und so, wie Sie es erwarten würden:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "Das Ergebnis ist $c."; # Das Ergebnis ist 30.
```

Die Variablen `$a` und `$b` enthalten Strings. Aber sie werden in einer Rechnung mit `+` verwendet. An dieser Stelle werden beide Strings in ganze Zahlen umgewandelt, also bekommt auch `$c` eine ganze Zahl. In der letzten Zeile wird die Variable mit der ganzen Zahl in einen String interpoliert. Raku tut das Nötige, um die Zahl als Ziffernzeichen darzustellen.

{% include nav.html %}
