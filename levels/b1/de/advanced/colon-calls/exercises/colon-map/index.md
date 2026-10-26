---
title: Ein Doppelpunkt-map
translations_gpt:
---

{% include menu.html %}

## Problem

Dieser Ausdruck verdoppelt die Zahlen von `1` bis `10`. Dann behält er nur die, die größer als `10` sind:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Schreibe den Code so um, dass der Aufruf von `grep` die Doppelpunkt-Form benutzt, nicht Klammern. Ändere den Rest der Kette nicht. Denke daran, dass die Doppelpunkt-Form den ganzen Rest der Anweisung nimmt. Also kann nur der letzte Aufruf in einer Kette sie benutzen.

## Beispiel

Das Programm gibt aus:

```
(12 14 16 18 20)
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
