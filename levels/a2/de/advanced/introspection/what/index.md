---
title: '`WHAT` verwenden'
---

{% include menu.html %}

`WHAT` ist eine Pseudo-Methode. Sie gibt dir den Typ eines Wertes. Du verwendest sie fast wie `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Beide geben den Typ aus, aber sie sehen ein bisschen anders aus. `.^name` liefert nur den Namen. `WHAT` liefert den Typ selbst, als Typ-Objekt. Es zeigt ihn in runden Klammern:

```
Int
(Int)
```

Nimm eine Variable ohne Typ-Constraint. Zuerst ist ihr Typ `Any`. Dann weist du einen Wert zu. Jetzt zeigen `^name` und `WHAT` beide den Typ dieses Wertes:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Mit einem Typ-Constraint kennt Raku den Typ sofort. Das gilt sogar, bevor du einen Wert zuweist:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Typ-Objekte vergleichen

`WHAT` gibt das Typ-Objekt selbst zurück. Also kannst du zwei Typ-Objekte vergleichen. Verwende dafür den Operator `===`. Das ist der _Wertidentitäts_-Operator. Er prüft, ob beide Seiten derselbe Wert sind. Jeder Typ hat nur ein Typ-Objekt. Also prüft `===` leicht, ob zwei Werte denselben Typ haben:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` vergleicht Zahlen. Aber `===` vergleicht die Identität. Also funktioniert es direkt mit Typ-Objekten. Es funktioniert auch mit anderen Werten.

{% include nav.html %}
