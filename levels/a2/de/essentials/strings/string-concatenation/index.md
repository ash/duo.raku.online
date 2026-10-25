---
title: Zeichenkettenverkettung
---

{% include menu.html %}

Sie können zwei Zeichenketten zusammenfügen. Dann bekommen Sie eine neue, längere Zeichenkette. Das nennen wir Zeichenkettenverkettung. In Raku verketten Sie Zeichenketten mit einem Operator. Können Sie seinen Namen raten? Es ist der Verkettungsoperator! Dieser Operator ist eine Tilde: `~`. Um zwei Zeichenketten zu verketten, setzen Sie `~` zwischen sie:

```raku
say 'Hello, ' ~ 'World!';
```

Manchmal stehen die Zeichenketten in Variablen. Dann können wir ‚Variablen verketten‘. Na ja, eigentlich verketten wir die Zeichenketten in diesen Variablen:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Sie können das Ergebnis auch in einer neuen Variablen speichern:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Verkettung und Zuweisung in einem Schritt

Manchmal möchten Sie eine Zeichenkette am Ende einer Variablen hinzufügen. Dann verwenden Sie diese Form:

```raku
# Anstatt von 
$str = $str ~ $another-str;

# verwenden Sie:
$str ~= $another-str;
```

{% include nav.html %}
