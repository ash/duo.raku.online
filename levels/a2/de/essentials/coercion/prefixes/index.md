---
title: Typumwandlung mit Präfixoperatoren
---

{% include menu.html %}

Sie können den Typ eines Objekts auch mit Präfixoperatoren ändern. Jeder dieser Operatoren ist nur ein Zeichen lang. Sie setzen ihn direkt vor einen Wert oder eine Variable.

`~` | Wandelt in einen String um
`+` | Wandelt in eine Zahl um
`?` | Wandelt in einen Booleschen Wert um

Hier ist ein Beispiel. Es macht aus einer ganzen Zahl einen Booleschen Wert:

```raku
say ?42; # True
```

Die Umwandlung in einen String funktioniert genauso:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, da "-30" 3 Zeichen hat
```

Beachten Sie Folgendes bei der Umwandlung in eine Zahl. Der Typ des Ergebnisses kann verschieden sein. Er hängt von der Zahl ab. Vergleichen Sie diese Umwandlungen von Strings:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Für die Umwandlung in einen Booleschen Wert können Sie auch `so` verwenden. Sie können es als Präfixoperator verwenden. Oder Sie verwenden es als Methode:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
