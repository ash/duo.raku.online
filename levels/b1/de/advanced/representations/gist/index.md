---
title: Die `.gist`-Methode
---

{% include menu.html %}

Die Methode `.gist` gibt eine **menschenfreundliche** Darstellung eines Wertes zurück. Das ist die Form, die du gern *lesen* würdest. `say` und `note` geben genau das aus, weil sie `.gist` für jedes Argument aufrufen.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Bei einfachen Werten ist der Gist einfach der Wert selbst. Bei zusammengesetzten Daten fügt `.gist` etwas Formatierung hinzu, damit die Struktur leicht zu lesen ist:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Ein Typobjekt ist ein Wert, der für den Typ selbst steht. Sein Gist ist sein Name in runden Klammern. So fällt es in der Ausgabe leicht auf:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
