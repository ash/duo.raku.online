---
title: Übung ’Nachschlagen oder nicht gefunden‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Schreiben Sie eine Subroutine `lookup`. Wenn ihr Argument `'a'` ist, gibt sie `100` zurück. Sonst ruft sie `fail` mit der Meldung `no such key` auf.

Rufen Sie `lookup('z')` auf. Wenn das Ergebnis definiert ist, geben Sie es aus. Wenn nicht, geben Sie `not found` aus. Geben Sie dann eine zweite Zeile mit dem Grund für den Fehlschlag aus. Nehmen Sie den Grund aus dem `Failure` selbst. Die Zeile sieht so aus: `reason: <message>`.

## Beispiel

Das Programm gibt aus:

```
not found
reason: no such key
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
