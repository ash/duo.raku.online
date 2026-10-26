---
title: Über den äußeren Bereich schließen
translations_gpt:
---

{% include menu.html %}

## Problem

Eine verschachtelte Unterroutine ist ein *Closure*. Das bedeutet, dass sie die Variablen der Unterroutine sehen kann, die sie enthält. Schreiben Sie eine Unterroutine `greet($name)` mit einem verschachtelten Helfer `message`, der **keine** Argumente nimmt. Der Helfer gibt `"Hello, $name!"` zurück und liest `$name` direkt aus dem umgebenden `greet`. Geben Sie innerhalb von `greet` aus, was `message` zurückgibt. Rufen Sie dann `greet('Anna')` auf.

## Beispiel

Das Programm gibt aus:

```
Hello, Anna!
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
