---
title: Übung ’Melden und erholen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Zeigen Sie, wie sich ein Programm mit `CATCH` von einem Fehler erholt. Das Programm hält nicht an. Es läuft mit einem sicheren Standardwert weiter.

Legen Sie vor einem Block eine Variable `$timeout` an. Geben Sie ihr den Standardwert `30`. Führen Sie im Block `die 'config missing'` aus. Versuchen Sie in der nächsten Zeile, `$timeout` auf `60` zu setzen. Das Programm kommt nie zu dieser Zeile. Fügen Sie einen `CATCH`-Phaser mit einem `default`-Block hinzu. Er gibt `warning: <message>; keeping default` aus. Geben Sie nach dem Block `timeout is <timeout> seconds` aus.

## Beispiel

Das Programm gibt aus:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
