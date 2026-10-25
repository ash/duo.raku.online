---
title: Zeichenkettenverkettung
---

{% include menu.html %}

Wenn Sie zwei Zeichenketten haben, können Sie sie zusammenfügen und eine neue, längere Zeichenkette bekommen. Das nennt man Zeichenkettenverkettung. In Raku verketten Sie Zeichenketten mit—raten Sie mal?—dem Verkettungsoperator. Dieser Operator ist eine Tilde, `~`. Um zwei Zeichenketten zu verketten, setzen Sie `~` zwischen sie:

```raku
say 'Hello, ' ~ 'World!';
```

Wenn unsere Zeichenketten in Variablen gespeichert sind, können wir ‚Variablen verketten‘. Na ja, genauer gesagt verketten wir die Zeichenketten, die diese Variablen enthalten:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Oder Sie erstellen eine neue Variable, die das Ergebnis der Verkettung speichert:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Verkettung mit Zuweisung

Um eine neue Zeichenkette am Ende einer Variablen hinzuzufügen, verwenden Sie diese Form:

```raku
# Anstatt von 
$str = $str ~ $another-str;

# verwenden Sie:
$str ~= $another-str;
```

{% include nav.html %}
