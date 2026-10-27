---
title: Übung ’Nennen Sie den Fehler‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Schreiben Sie eine Subroutine `risky`. Sie führt `die 'sub failed'` aus. Rufen Sie `risky` dann in einem Block mit einem `CATCH`-Phaser auf. Zuerst gibt das `CATCH` den Typnamen der Ausnahme aus, mit `.^name`. Dann gibt es ihre Meldung aus, mit `.message`. Das zeigt noch etwas über `CATCH`. Es behandelt auch Ausnahmen aus Code, den der Block *aufruft*. Das `die` muss nicht im Block selbst stehen.

## Beispiel

Das Programm gibt aus:

```
X::AdHoc
sub failed
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
