---
title: Ein beschreibbarer Parameter
translations_gpt:
---

{% include menu.html %}

## Problem

Normalerweise sind die Parameter einer Subroutine schreibgeschützt. Also kann eine Routine die Variable des Aufrufers nicht ändern. Das Trait `is rw` hebt diese Grenze auf.

Schreiben Sie eine Subroutine `double`. Sie hat einen Parameter mit dem Trait `is rw`. Die Subroutine verdoppelt den Parameter selbst: `$n *= 2`. Rufen Sie `double` mit einer Variablen auf, die `21` enthält. Geben Sie dann die Variable aus. Sie ist jetzt `42`.

## Beispiel

Das Programm gibt aus:

```
42
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
