---
title: Über den äußeren Bereich schließen
translations_gpt:
---

{% include menu.html %}

## Problem

Eine verschachtelte Unterroutine ist ein *Closure*. Sie kann die Variablen der Unterroutine um sie herum sehen. Schreiben Sie eine Unterroutine `greet($name)`. Definieren Sie darin einen Helfer `message`. Der Helfer nimmt **keine** Argumente. Er gibt `"Hello, $name!"` zurück. Er nimmt `$name` direkt aus `greet` um ihn herum. Geben Sie in `greet` das Ergebnis von `message` aus. Rufen Sie dann `greet('Anna')` auf.

## Beispiel

Das Programm gibt aus:

```
Hello, Anna!
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
