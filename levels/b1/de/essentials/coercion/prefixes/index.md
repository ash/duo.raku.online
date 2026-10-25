---
title: Typumwandlung mit Präfixoperatoren
---

{% include menu.html %}

Eine weitere Möglichkeit, den Typ eines Objekts zu ändern, sind Präfixoperatoren. Das sind Operatoren aus nur einem Zeichen. Sie setzen sie direkt vor den Wert (oder eine Variable).

`~` | String-Koerzierung
`+` | Numerische Koerzierung
`?` | Boolesche Koerzierung

Hier ist ein Beispiel, das aus einer ganzen Zahl einen Booleschen Wert erstellt:

```raku
say ?42; # True
```

Die Konvertierung in einen String ist ähnlich:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, da "-30" 3 Zeichen hat
```

Beachten Sie, dass bei der Umwandlung in eine Zahl der Typ des Ergebnisses von der Zahl abhängt. Vergleichen Sie die folgenden Umwandlungen von Strings:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Um in einen Booleschen Wert umzuwandeln, können Sie auch eine Routine namens `so` verwenden. Sie funktioniert als Präfixoperator oder als Methode:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
