---
title: Ein Array aliasieren
---

{% include menu.html %}

## Aufgabe

Hier ist ein Array:

```raku
my @original = 10, 20, 30;
```

Erstelle einen zweiten Namen, `@alias`, für _dasselbe_ Array. Kopiere das Array nicht. Füge diesmal mit `push` ein neues Element zu `@original` hinzu. Dann gib `@alias` aus. Das zeigt: Der Alias sieht mehr als neue Werte. Er sieht auch Änderungen an der Struktur des Arrays.

## Beispiel

Das Programm gibt aus:

```
[10 20 30 40]
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
