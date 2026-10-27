---
title: Übung ’Zwei Ausnahmetypen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Erstellen Sie zwei eigene Ausnahmeklassen, `TooSmall` und `TooBig`. Das sind Klassen für Ihre eigenen Fehler. Jede Klasse erbt von `Exception`. Die Methode `message` von `TooSmall` gibt `too small` zurück. Die Methode `message` von `TooBig` gibt `too big` zurück.

Schreiben Sie eine Schleife über die beiden Typen. Werfen Sie für jeden Typ eine Ausnahme dieses Typs. Jede Ausnahme hat ihren eigenen Block. Fügen Sie einen `CATCH`-Phaser mit einem `when`-Zweig für jeden Typ hinzu. Für `TooSmall` gibt er `small` aus. Für `TooBig` gibt er `big` aus. So sehen Sie, dass beide Zweige laufen.

## Beispiel

Das Programm gibt aus:

```
small
big
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
