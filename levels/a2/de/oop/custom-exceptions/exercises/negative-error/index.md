---
title: Übung ’Ein Fehler bei negativen Zahlen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Erstellen Sie eine eigene Ausnahmeklasse `Negative`. Das ist eine Klasse für Ihre eigenen Fehler. Sie erbt von `Exception`. Sie hat ein Attribut `n`. Ihre Methode `message` gibt `<n> is negative` zurück.

Schreiben Sie eine Subroutine `check($n)`. Wenn ihr Argument kleiner als null ist, wirft sie eine `Negative`. Diese `Negative` enthält das `n`. Sonst gibt die Subroutine das Argument zurück. Rufen Sie dann `check(-5)` in einem Block auf. Fügen Sie einen `CATCH`-Phaser mit `when Negative` hinzu. Er gibt die Meldung der Ausnahme aus.

Werfen Sie am Ende, nach dem Block, noch eine `Negative`. Ihr `n` ist `-10`. Kein `CATCH` fängt sie dort. Das zeigt, was dann passiert. Die Ausnahme beendet das Programm.

## Beispiel

Das Programm gibt aus:

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
