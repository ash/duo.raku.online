---
title: Übung ’Ein Fehler bei negativen Zahlen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Definieren Sie eine eigene Ausnahmeklasse mit dem Namen `Negative`. Sie erbt von `Exception` und hat ein Attribut `n`. Ihre Methode `message` gibt `<n> is negative` zurück.

Schreiben Sie eine Subroutine `check($n)`. Wenn ihr Argument kleiner als null ist, wirft sie eine `Negative`, die dieses `n` mit sich trägt. Sonst gibt sie das Argument zurück. Rufen Sie dann in einem Block `check(-5)` auf. Verwenden Sie einen `CATCH`-Phaser mit `when Negative`, um die Meldung der Ausnahme auszugeben.

Werfen Sie zum Schluss nach dem Block eine weitere `Negative` mit `n` gleich `-10`. Kein `CATCH` schützt diese Stelle. Das zeigt, dass so eine Ausnahme das Programm beendet.

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
