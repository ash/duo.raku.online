---
title: Ein typisiertes MAIN
translations_gpt:
---

{% include menu.html %}

## Problem

Raku prüft auch den Typ eines `MAIN`-Parameters, bevor der Körper ausgeführt wird. Schreiben Sie ein Programm, dessen `MAIN` ein einzelnes `Int $n` nimmt und `$n` mal zwei ausgibt. Wenn das Argument keine gültige Ganzzahl ist, passt die Signatur nicht. Dann gibt Raku stattdessen die Verwendungsmeldung aus, und Sie bekommen die Prüfung umsonst.

## Beispiel

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
