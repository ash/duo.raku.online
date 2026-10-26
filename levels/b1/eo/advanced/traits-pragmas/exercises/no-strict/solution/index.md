---
title: 'Solvo: Malstreĉi strict'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `no strict` malŝaltas la regulon, ke variabloj devas esti deklaritaj. Do vi povas atribui al `$a` kaj `$b` sen `my`. Kun la defaŭlta `strict`, ĉiu el ĉi tiuj linioj estus kompiltempa eraro.

1. Post kiam vi atribuas ilin, la variabloj kondutas kiel kutime, do `$a + $b` estas `30`. Ĉi tiu pli malforta regulo estas leksika. Ĝi daŭras nur ĝis la fino de la amplekso, kie `no strict` aperas.

1. Ĉi tio estas nur demonstro, kaj ni ne rekomendas ĝin en praktiko. `strict` estas ŝaltita defaŭlte pro bona kialo. Ĝi kaptas tajperarojn en nomoj de variabloj dum kompilado. En vera kodo, lasu ĝin ŝaltita kaj deklaru viajn variablojn per `my`.

{% include nav.html %}
