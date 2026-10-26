---
title: Ein typisiertes MAIN
translations_gpt:
---

{% include menu.html %}

## Problem

Ein Parameter von `MAIN` kann einen Typ haben. Raku prüft auch diesen Typ, bevor der Körper läuft. Schreiben Sie ein Programm mit `MAIN`. Es nimmt einen Parameter, `Int $n`. Es gibt `$n` mal zwei aus. Was ist, wenn das Argument keine richtige Ganzzahl ist? Dann passt die Signatur nicht. Raku gibt stattdessen die Verwendungsmeldung aus. So prüft Raku das Argument für Sie, und Sie haben keine zusätzliche Arbeit.

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
