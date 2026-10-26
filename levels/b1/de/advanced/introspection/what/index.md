---
title: '`WHAT` verwenden'
---

{% include menu.html %}

`WHAT` ist eine Pseudo-Methode, mit der du den Typ eines Wertes bekommst. Du kannst sie fast genauso wie `.^name` verwenden:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Beide geben den Typ aus, aber sie sehen etwas anders aus. `.^name` liefert nur den Namen, und `WHAT` zeigt das Typ-Objekt in Klammern:

```
Int
(Int)
```

Wenn eine Variable keinen Typ-Constraint hat, ist ihr Typ zuerst `Any`. Nachdem du einen Wert zugewiesen hast, zeigen `^name` und `WHAT` beide seinen Typ:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Mit einem Typ-Constraint ist der Typ sofort bekannt, sogar bevor du etwas zuweist:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Typ-Objekte vergleichen

`WHAT` gibt das Typ-Objekt selbst zurück, also kannst du zwei Typ-Objekte mit `===` vergleichen. Das ist der _Wertidentitäts_-Operator. Er prüft, ob beide Seiten genau derselbe Wert sind. Jeder Typ hat nur ein Typ-Objekt. Also ist das ein sauberer Weg, um zu prüfen, ob zwei Werte denselben Typ haben:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` vergleicht Zahlen, aber `===` vergleicht die Identität. Also funktioniert es direkt mit Typ-Objekten und auch mit anderen Werten.

{% include nav.html %}
