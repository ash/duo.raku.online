---
title: Beim Verlassen aufräumen
---

{% include menu.html %}

## Problem

Das Beste an `LEAVE` ist dies. Er läuft, *egal wie* das Programm den Block verlässt. Er läuft sogar nach einem frühen `return`.

Schreibe eine Subroutine `work`. Ihr Rumpf beginnt mit einem `LEAVE`-Phaser. Der Phaser gibt `Cleanup` aus. Gib dann, noch in der Subroutine, `Working` aus. Nutze danach sofort `return`. Setze eine Zeile `say 'never reached'` hinter das `return`. Rufe die Subroutine auf. Das frühe `return` überspringt die letzte Zeile. Aber das Programm gibt trotzdem `Cleanup` aus.

## Beispiel

Das Programm gibt aus:

```
Working
Cleanup
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
