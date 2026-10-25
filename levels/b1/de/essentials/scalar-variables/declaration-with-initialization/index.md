---
title: Deklaration mit Initialisierung
---

{% include menu.html %}

Manchmal kennen Sie den Wert schon, wenn Sie eine Variable erstellen. Dann können Sie beides in einer Anweisung tun, was eine Codezeile spart:

```raku
my $name = 'Anna';
say $name;
```

## Mehrere Variablen

Um mehrere Variablen zu erstellen und ihnen Werte zuzuweisen, verwenden Sie diese Form:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}
