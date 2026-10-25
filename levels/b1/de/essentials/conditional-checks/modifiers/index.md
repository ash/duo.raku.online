---
title: '`if` und `unless` als Anweisungsmodifikatoren'
---

{% include menu.html %}

Manchmal soll eine einfache Anweisung nur unter einer bestimmten Bedingung laufen. Dafür hat Raku eine sehr praktische Lösung. Sie müssen keinen eigenen Codeblock erstellen. Setzen Sie einfach `if` oder `unless` direkt hinter die Anweisung. In Raku heißen solche Konstrukte _statement modifiers_.

```raku
say 'Guten Nachmittag' if $hours > 12;

say 'Alle Systeme funktionieren' unless $broken;
```

{% include nav.html %}
