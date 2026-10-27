---
title: Übung ’Melden und erholen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Zeigen Sie, wie sich ein Programm mithilfe von `CATCH` erholen kann. Es läuft mit einem sinnvollen Standardwert weiter.

Deklarieren Sie vor einem Block eine Variable `$timeout` mit dem Standardwert `30`. Führen Sie im Block `die 'config missing'` aus. Versuchen Sie dann in einer Zeile, die nie läuft, `$timeout` auf `60` zu setzen. Verwenden Sie einen `CATCH`-Phaser, dessen `default`-Block `warning: <message>; keeping default` ausgibt. Geben Sie nach dem Block `timeout is <timeout> seconds` aus.

## Beispiel

Das Programm gibt aus:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
