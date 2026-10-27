---
title: Übung ’Zu groß‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Erstellen Sie eine eigene Ausnahmeklasse `TooBig`. Das ist eine Klasse für Ihre eigenen Fehler. Sie erbt von `Exception`. Sie hat zwei Attribute, `value` und `limit`. Ihre Methode `message` muss `Value <value> exceeds the limit of <limit>` zurückgeben.

Schreiben Sie dann eine Schleife über die Werte `30`, `99` und `60`. Die Grenze ist `50`. Werfen Sie eine `TooBig` nur dann, wenn ein Wert größer als die Grenze ist. Fügen Sie einen `CATCH`-Phaser mit `when TooBig` hinzu. Er gibt die Meldung **und** eine zweite Zeile aus. Für diese Zeile liest er das Attribut `limit` der Ausnahme direkt. Die zweite Zeile ist `Try a value up to <limit>.`. Für einen Wert innerhalb der Grenze geben Sie einfach aus, dass er in Ordnung ist.

Sie sehen: Nur die fehlschlagenden Zahlen bekommen eine Ausnahme. Die anderen Zahlen kommen ohne Problem durch. In beiden Fällen läuft die Schleife weiter.

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
