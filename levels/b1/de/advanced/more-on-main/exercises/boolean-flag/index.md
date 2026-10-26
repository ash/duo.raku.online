---
title: Ein Befehlszeilen-Flag
translations_gpt:
---

{% include menu.html %}

## Problem

Ein benannter `Bool`-Parameter von `MAIN` wird zu einem **Flag**, das entweder an oder aus ist. Wenn Sie `--flag` schreiben, wird es `True`, und wenn Sie es weglassen, behält es seinen Standardwert. Schreiben Sie ein Programm, dessen `MAIN` den Parameter `Bool :$shout = False` nimmt. Es soll `HELLO` ausgeben, wenn das Flag gesetzt ist, und `hello`, wenn es nicht gesetzt ist.

## Beispiel

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
