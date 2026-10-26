---
title: 'Solvo: Klasifiki la grandecon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Ĉiuj tri kandidatoj prenas unu `Int`. Sen la `where`-frazoj, ili kolizias. Raku ne povas elekti inter ili. La kondiĉoj ĉe la unuaj du faras ilin malsamaj. La tria kandidato prenas ĉiujn aliajn nombrojn.

1. La `where`-frazoj kontrolas `$n.abs`. Do nur la grandeco de la nombro gravas, ne ĝia signo. `size(7)` kongruas kun la unua kandidato kaj donas `small`. En `size(-250)`, la absoluta valoro estas `250`. Ĝi plenumas neniun el la du kondiĉoj. Do ĝi iras al la lasta kandidato, kiu prenas ĉion alian. La rezulto estas `large`.

1. Raku testas la kandidatojn de la plej specifa ĝis la plej ĝenerala. Ĉi tie, tio estas ĝuste ilia ordo en la kodo.

{% include nav.html %}
