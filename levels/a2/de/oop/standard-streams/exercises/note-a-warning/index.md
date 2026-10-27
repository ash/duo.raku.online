---
title: Übung ’Vermerken Sie eine Warnung‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Ein Programm arbeitet mit einem Wert. Der Wert ist negativ. Wenn der Wert unter null liegt, schicken Sie eine Warnung an die Standardfehlerausgabe. Nehmen Sie dafür `note`. Schicken Sie dann mit `say` das echte Ergebnis an die Standardausgabe. Das Ergebnis ist der Betrag der Zahl. Das ist die Zahl ohne ihr Minuszeichen. Verwenden Sie den Wert `-3`.

## Beispiel

Sie sehen beide Zeilen auf dem Bildschirm:

```
Warning: the value is negative
3
```

Hier werfen wir die Standardfehlerausgabe weg. Nur das Ergebnis bleibt übrig:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
