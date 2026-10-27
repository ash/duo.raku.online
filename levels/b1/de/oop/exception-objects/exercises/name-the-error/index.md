---
title: Übung ’Nennen Sie den Fehler‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Schreiben Sie eine Subroutine `risky`, die `die 'sub failed'` ausführt. Rufen Sie sie dann in einem Block auf, der einen `CATCH`-Phaser hat. Das `CATCH` soll mit `.^name` den Typnamen der Ausnahme ausgeben. Danach soll es mit `.message` ihre Meldung ausgeben. Das zeigt, dass `CATCH` Ausnahmen aus Code behandelt, den der Block *aufruft*. Das `die` muss nicht direkt im Block stehen.

## Beispiel

Das Programm gibt aus:

```
X::AdHoc
sub failed
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
