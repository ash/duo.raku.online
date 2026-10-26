---
title: Ein beschreibbarer Parameter
translations_gpt:
---

{% include menu.html %}

## Problem

Standardmäßig sind die Parameter einer Subroutine schreibgeschützt. Das bedeutet, dass eine Routine die Variable des Aufrufers nicht ändern kann. Das Trait `is rw` hebt diese Einschränkung auf.

Schreiben Sie eine Subroutine `double` mit einem Parameter, der mit `is rw` markiert ist. Die Subroutine verdoppelt den Parameter direkt mit `$n *= 2`. Rufen Sie sie mit einer Variablen auf, die `21` enthält. Geben Sie dann die Variable aus, um zu zeigen, dass sie jetzt `42` ist.

## Beispiel

Das Programm gibt aus:

```
42
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
