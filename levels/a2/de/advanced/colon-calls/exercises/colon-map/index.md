---
title: Ein Doppelpunkt-map
translations_gpt:
---

{% include menu.html %}

## Problem

Hier ist ein Ausdruck. Er verdoppelt die Zahlen von `1` bis `10`. Dann behält er nur die Zahlen größer als `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Ändere den Code. Der Aufruf der Methode `grep` muss die Doppelpunkt-Form benutzen, keine Klammern. Ändere den Rest der Kette nicht. Denke daran: Die Doppelpunkt-Form nimmt den Rest der Anweisung. Also kann nur der letzte Aufruf in einer Kette sie benutzen.

## Beispiel

Das Programm gibt aus:

```
(12 14 16 18 20)
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
