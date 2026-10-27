---
title: Übung ’Behandeln und weitermachen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Schreiben Sie eine Schleife über die drei Elemente `ok`, `bad` und `ok`. Führen Sie für jedes Element einen Block aus, der `processed <item>` ausgibt. Aber wenn das Element `bad` ist, soll der Block `die 'boom'` ausführen. Setzen Sie einen `CATCH`-Phaser in den Block. Er soll ein fehlschlagendes Element als `skipped (<item>): <message>` melden. Dann geht die Schleife zum nächsten Element weiter, statt anzuhalten.

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
