---
title: 'Solvo: Klasifiki la grandecon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Vi povas trovi la fontkodon en la dosiero [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Eligo

```
small
medium
large
```

## Komentoj

1. Ĉiuj tri kandidatoj prenas unu solan `Int`, do ili kolizius sen la `where`-frazoj. La kondiĉoj ĉe la unuaj du faras ilin malsamaj. La tria kaptas ĉion alian.

1. La `where`-frazoj testas `$n.abs`. Do nur la grandeco de la nombro decidas la rezulton, kaj la signo estas ignorata. `size(7)` kongruas kun la unua kandidato (`small`). En `size(-250)`, la absoluta valoro estas `250`. Ĝi plenumas neniun el la du kondiĉoj kaj iras plu al la kandidato por ĉio alia (`large`).

1. La kandidatoj estas testataj de la plej specifa ĝis la plej ĝenerala. Ĉi tie, tio estas ĝuste la ordo, en kiu ili estas skribitaj.

{% include nav.html %}
