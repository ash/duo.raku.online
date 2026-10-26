---
title: Beim Verlassen aufräumen
---

{% include menu.html %}

## Problem

Die wahre Stärke von `LEAVE` ist, dass er läuft, *egal wie* der Block verlassen wird. Das gilt auch für ein frühes `return`.

Schreibe eine Subroutine `work`, deren Rumpf mit einem `LEAVE`-Phaser beginnt, der `Cleanup` ausgibt. Gib dann, noch innerhalb der Subroutine, `Working` aus und führe sofort ein `return` aus. Setze eine Zeile `say 'never reached'` hinter das `return`. Rufe die Subroutine auf. Das frühe `return` überspringt die letzte Zeile, aber `Cleanup` wird trotzdem ausgegeben.

## Beispiel

Das Programm gibt aus:

```
Working
Cleanup
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
