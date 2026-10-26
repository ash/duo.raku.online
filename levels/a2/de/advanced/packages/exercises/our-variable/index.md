---
title: Eine our-Variable
---

{% include menu.html %}

## Problem

Nur `our` macht einen Namen außerhalb seines Packages sichtbar. `my` hält den Namen privat. Erstelle ein Package `Config`. Es hat eine `our`-Variable `$port` mit dem Wert `8080`. Es hat **auch** eine `my`-Variable `$secret` mit dem Wert `42`. Gib von außerhalb des Packages `$Config::port` aus. Gib dann aus, ob `$Config::secret` definiert ist. Sie sollte nicht definiert sein. Eine `my`-Variable ist kein Teil des Namensraums.

## Beispiel

Das Programm gibt aus:

```
8080
False
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
