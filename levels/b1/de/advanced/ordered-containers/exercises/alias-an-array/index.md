---
title: Ein Array aliasieren
---

{% include menu.html %}

## Aufgabe

Du hast dieses Array:

```raku
my @original = 10, 20, 30;
```

Erstelle einen zweiten Namen, `@alias`, für _dasselbe_ Array, ohne es zu kopieren. Füge diesmal mit `push` ein neues Element zu `@original` hinzu und gib dann `@alias` aus. Das zeigt, dass der Alias auch Änderungen der Struktur sieht, nicht nur Änderungen der Werte.

## Beispiel

Das Programm gibt aus:

```
[10 20 30 40]
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
