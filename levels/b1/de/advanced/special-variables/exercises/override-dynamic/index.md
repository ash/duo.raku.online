---
title: Die dynamische Variable überschreiben
---

{% include menu.html %}

## Aufgabe

Zeige, wie eine dynamische Variable durch eine Routine in der Mitte hindurchgeht. Diese Routine weiß nichts von ihr.

Schreibe eine Subroutine `log-it($msg)`, die die Nachricht mit einer dynamischen Variable `$*prefix` davor ausgibt. Schreibe eine zweite Subroutine `task`, die nur `log-it('working')` aufruft. Sie erwähnt `$*prefix` selbst nie. Rufe dann `task` zweimal auf, jedes Mal aus einem Block heraus. Jeder Block setzt `$*prefix` auf einen anderen Wert: zuerst `INFO`, dann `DEBUG`.

## Beispiel

Das Programm gibt aus:

```
INFO: working
DEBUG: working
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
