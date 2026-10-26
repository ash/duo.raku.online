---
title: Tipita MAIN
translations_gpt:
---

{% include menu.html %}

## Problemo

Raku ankaŭ kontrolas la tipon de parametro de `MAIN`, antaŭ ol la korpo ruliĝas. Skribu programon, kies `MAIN` prenas unu `Int $n` kaj presas la duoblon de `$n`. Se la argumento ne estas valida entjero, la signaturo ne kongruas. Tiam Raku anstataŭe presas la uzad-mesaĝon, do vi ricevas la kontrolon senpage.

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
