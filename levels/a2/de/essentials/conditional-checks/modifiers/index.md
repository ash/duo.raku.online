---
title: '`if` und `unless` als Anweisungsmodifikatoren'
---

{% include menu.html %}

Manchmal hängt eine einfache Anweisung von einer Bedingung ab. Dafür hat Raku einen sehr einfachen Weg. Sie brauchen keinen eigenen Codeblock. Setzen Sie einfach `if` oder `unless` direkt hinter die Anweisung. In Raku nennt man das _statement modifiers_.

```raku
say 'Guten Nachmittag' if $hours > 12;

say 'Alle Systeme funktionieren' unless $broken;
```

{% include nav.html %}
