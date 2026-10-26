---
title: Vexillum lineae mandati
translations_gpt: true
---

{% include menu.html %}

## Problema

Parametrus nominatus `Bool` subroutinae `MAIN` fit **vexillum**, quod aut accensum aut exstinctum est. Si `--flag` scribis, id ad `True` ponitur; si id omittis, valorem praefinitum servat. Scribe programma cuius `MAIN` `Bool :$shout = False` accipit. `HELLO` imprimere debet cum vexillum positum est, et `hello` cum non est.

## Exemplum

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
