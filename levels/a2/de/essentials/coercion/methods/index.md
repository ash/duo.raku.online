---
title: Typumwandlung mit Typumwandlungsmethoden
---

{% include menu.html %}

Sie können einen Wert in einen anderen Typ umwandeln. Ein anderes Wort dafür ist _erzwingen_. Dazu rufen Sie eine Methode auf. Ihr Name ist der Name des Datentyps. Wandeln Sie zum Beispiel einen String in eine ganze Zahl um:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

Oft müssen Sie Werte nicht selbst umwandeln. Raku macht das für Sie. Dieser Code funktioniert richtig und wie erwartet:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "Das Ergebnis ist $c."; # Das Ergebnis ist 30.
```

Die beiden Variablen `$a` und `$b` enthalten Strings. Aber der Ausdruck addiert sie mit `+`. Darum wandelt Raku hier beide Strings in ganze Zahlen um. Dann bekommt auch `$c` eine ganze Zahl. In der letzten Zeile interpoliert Raku diese Variable in einen String. Dafür macht Raku aus der Zahl Ziffernzeichen.

{% include nav.html %}
