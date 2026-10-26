---
title: Tipita MAIN
translations_gpt:
---

{% include menu.html %}

## Problemo

Parametro de `MAIN` povas havi tipon. Raku ankaŭ kontrolas ĉi tiun tipon, antaŭ ol la korpo ruliĝas. Skribu programon kun `MAIN`. Ĝi prenas unu parametron, `Int $n`. Ĝi presas la duoblon de `$n`. Kio okazas, se la argumento ne estas ĝusta entjero? Tiam la signaturo ne kongruas. Anstataŭe Raku presas la uzad-mesaĝon. Do Raku kontrolas la argumenton por vi, kaj vi faras neniun kroman laboron.

## Ekzemplo

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
