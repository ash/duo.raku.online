---
title: Übung ’Behandeln und weitermachen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Schreiben Sie eine Schleife über drei Elemente: `ok`, `bad` und `ok`. Führen Sie für jedes Element einen Block aus. Der Block gibt `processed <item>` aus. Aber für das Element `bad` führt er `die 'boom'` aus. Setzen Sie einen `CATCH`-Phaser in den Block. Er fängt den Fehler. Für ein fehlschlagendes Element gibt er `skipped (<item>): <message>` aus. Dann geht die Schleife zum nächsten Element weiter. Sie hält nicht an.

## Beispiel

Das Programm gibt aus:

```
processed ok
skipped (bad): boom
processed ok
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
