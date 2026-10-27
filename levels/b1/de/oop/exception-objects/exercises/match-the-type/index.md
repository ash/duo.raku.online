---
title: Übung ’Treffen Sie den Typ‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Eingebaute Fehler haben eigene Ausnahmetypen, und Sie können auf sie prüfen. Schreiben Sie einen Block, der `1 / 0` berechnet und versucht, das Ergebnis zu verwenden. Das wirft eine `X::Numeric::DivideByZero`. Verwenden Sie im `CATCH`-Phaser des Blocks `when X::Numeric::DivideByZero`, um genau auf diesen Typ zu prüfen. Geben Sie dann `cannot divide by zero` aus.

## Beispiel

Das Programm gibt aus:

```
cannot divide by zero
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
