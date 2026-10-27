---
title: Übung ’Zu groß‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Definieren Sie eine eigene Ausnahmeklasse `TooBig`. Sie erbt von `Exception` und hat zwei Attribute, `value` und `limit`. Ihre Methode `message` soll `Value <value> exceeds the limit of <limit>` zurückgeben.

Schreiben Sie dann eine Schleife über die Werte `30`, `99` und `60`, mit einer Grenze von `50`. Werfen Sie für jeden Wert nur dann eine `TooBig`, wenn der Wert über der Grenze liegt. Verwenden Sie einen `CATCH`-Phaser mit `when TooBig`, der die Meldung **und** eine zweite Zeile ausgibt. In dieser Zeile liest er das Attribut `limit` der Ausnahme direkt aus. Er gibt `Try a value up to <limit>.` aus. Ein Wert innerhalb der Grenze soll einfach melden, dass er in Ordnung ist.

Das zeigt, dass nur die fehlschlagenden Zahlen eine Ausnahme auslösen. Die anderen Zahlen gehen glatt durch, und die Schleife läuft in beiden Fällen weiter.

## Beispiel

Das Programm gibt aus:

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
