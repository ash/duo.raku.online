---
title: Ein Befehlszeilen-Flag
translations_gpt:
---

{% include menu.html %}

## Problem

Ein benannter Parameter von `MAIN` kann den Typ `Bool` haben. Dann wird er zu einem **Flag**. Ein Flag ist an oder aus. Wenn Sie `--flag` schreiben, ist es `True`. Wenn Sie es weglassen, behält es seinen Standardwert. Schreiben Sie ein Programm mit `MAIN`. Es nimmt `Bool :$shout = False`. Mit dem Flag gibt das Programm `HELLO` aus. Ohne das Flag gibt es `hello` aus.

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
