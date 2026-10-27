---
title: Übung ’Zwei Ausnahmetypen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Definieren Sie zwei eigene Ausnahmeklassen, `TooSmall` und `TooBig`. Jede von ihnen erbt von `Exception`. Ihre Methoden `message` geben `too small` und `too big` zurück, in dieser Reihenfolge.

Schreiben Sie eine Schleife über die beiden Typen. Werfen Sie für jeden eine Ausnahme dieses Typs in einem eigenen Block. Verwenden Sie einen `CATCH`-Phaser mit einem `when`-Zweig für jeden Typ. Er gibt für `TooSmall` `small` aus und für `TooBig` `big`. So können Sie sehen, dass beide Zweige benutzt werden.

## Beispiel

Das Programm gibt aus:

```
small
big
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
