---
title: Die `.gist`-Methode
---

{% include menu.html %}

Die Methode `.gist` gibt eine **menschenfreundliche** Form eines Wertes zurück. Das ist die Form, die du *lesen* willst. `say` gibt genau diese Form aus. `note` gibt sie auch aus. Sie rufen `.gist` für jedes Argument auf.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Bei einfachen Werten ist der Gist einfach der Wert. Manche Daten haben mehrere Teile. Bei solchen Daten fügt `.gist` ein wenig Formatierung hinzu. Dann kannst du die Struktur immer noch leicht lesen:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Ein Typobjekt ist ein Wert. Es steht für den Typ selbst. Sein Gist ist der Name des Typs in runden Klammern. So kannst du es in der Ausgabe leicht sehen:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
