---
title: Eingebettete Kommentare
---

{% include menu.html %}

Eingebettete oder Inline-Kommentare sehen genauso aus wie mehrzeilige Kommentare. Der einzige Unterschied ist, dass sie zwischen anderen Teilen des Programms stehen. Zum Beispiel:

```raku
my $name;
$name = #`[Hier wird Benutzereingabe erwartet] prompt 'Wie heißt du? ';
say $name;
```

Mit einem guten Syntax-Highlighter sind die Kommentare viel leichter zu sehen.

{% include nav.html %}
