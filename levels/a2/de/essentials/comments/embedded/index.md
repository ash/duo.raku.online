---
title: Eingebettete Kommentare
---

{% include menu.html %}

Eingebettete Kommentare heißen auch Inline-Kommentare. Sie sehen wie mehrzeilige Kommentare aus. Es gibt nur einen Unterschied. Sie setzen sie zwischen andere Teile des Programms. Zum Beispiel:

```raku
my $name;
$name = #`[Hier wird Benutzereingabe erwartet] prompt 'Wie heißt du? ';
say $name;
```

Ein guter Syntax-Highlighter zeigt Code in Farben. Das hilft sehr, die Kommentare zu sehen.

{% include nav.html %}
