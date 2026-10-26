---
title: Die dynamische Variable überschreiben
---

{% include menu.html %}

## Aufgabe

Zeige, wie eine dynamische Variable durch eine Routine in der Mitte geht. Diese Routine weiß nichts von der Variable.

Schreibe eine Subroutine `log-it($msg)`. Sie gibt die Nachricht aus. Vor der Nachricht gibt sie eine dynamische Variable `$*prefix` aus. Schreibe eine zweite Subroutine, `task`. Sie ruft nur `log-it('working')` auf. Sie verwendet `$*prefix` selbst nie. Rufe dann `task` zweimal auf. Rufe sie jedes Mal aus einem Block heraus auf. Jeder Block gibt `$*prefix` einen anderen Wert: zuerst `INFO`, dann `DEBUG`.

## Beispiel

Das Programm gibt aus:

```
INFO: working
DEBUG: working
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
