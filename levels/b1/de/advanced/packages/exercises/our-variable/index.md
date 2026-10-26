---
title: Eine our-Variable
---

{% include menu.html %}

## Problem

Nur `our` macht einen Namen außerhalb seines Packages sichtbar, während `my` ihn privat hält. Erstelle ein Package `Config` mit einer `our`-Variable `$port` mit dem Wert `8080`. Füge im selben Package **auch** eine `my`-Variable `$secret` mit dem Wert `42` hinzu. Gib von außen `$Config::port` aus. Gib dann aus, ob `$Config::secret` definiert ist. Das sollte nicht so sein, weil eine `my`-Variable kein Teil des Namensraums ist.

## Beispiel

Das Programm gibt aus:

```
8080
False
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
