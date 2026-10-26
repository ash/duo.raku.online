---
title: 'Solvo: Malstreĉi strict'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
no strict;

$a = 10;
$b = 20;
say $a + $b;
```

🦋 Vi povas trovi la fontkodon en la dosiero [no-strict.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/no-strict.raku).

## Eligo

```
30
```

## Komentoj

1. `no strict` malŝaltas regulon. La regulo diras, ke vi devas deklari ĉiujn variablojn. Do vi povas atribui al `$a` kaj `$b` sen `my`. Kun la normala `strict`, ĉi tiuj linioj donas erarojn dum kompilado.

1. Post la atribuo, la variabloj funkcias kiel kutime. Do `$a + $b` estas `30`. Ĉi tiu ŝanĝo de la regulo estas leksika. Ĝi daŭras nur ĝis la fino de la nuna amplekso. Tio estas la amplekso kun `no strict`.

1. Ĉi tio estas nur demonstro. Ni ne rekomendas ĝin en praktiko. `strict` estas ŝaltita defaŭlte pro bona kialo. Ĝi trovas tajperarojn en nomoj de variabloj dum kompilado. En vera kodo, lasu ĝin ŝaltita. Deklaru viajn variablojn per `my`.

{% include nav.html %}
