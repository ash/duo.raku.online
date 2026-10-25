---
title: Deklaration mit Initialisierung
---

{% include menu.html %}

Manchmal kennen Sie den Wert einer neuen Variablen schon am Anfang. Dann brauchen Sie nur eine Anweisung. Die Anweisung erstellt die Variable und legt den Wert hinein. Das spart eine Codezeile:

```raku
my $name = 'Anna';
say $name;
```

## Zwei oder mehr Variablen

Sie können auch zwei oder mehr Variablen erstellen und ihnen Werte geben. Schreiben Sie das so:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}
