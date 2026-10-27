---
title: Übung ’Treffen Sie den Typ‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Jeder eingebaute Fehler hat seinen eigenen Ausnahmetyp. Sie können auf diese Typen prüfen. Schreiben Sie einen Block, der `1 / 0` berechnet. Dann versucht der Block, das Ergebnis zu verwenden. Das wirft eine `X::Numeric::DivideByZero`. Fügen Sie dem Block einen `CATCH`-Phaser hinzu. Verwenden Sie darin `when X::Numeric::DivideByZero`. Das passt genau auf diesen Typ. Geben Sie dann `cannot divide by zero` aus.

## Beispiel

Das Programm gibt aus:

```
cannot divide by zero
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
