---
title: 'Solvo: Trafiklumo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Vi povas trovi la fontkodon en la dosiero [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Eligo

```
red is 0
amber is 1
green is 2
```

## Komentoj

1. `my Light $current` estas normala variablo. Vi povas ŝanĝi ĝian valoron. Sed ĝi povas teni nur `Light`. Atribuu la sekvan konstanton, kaj la lumo iras plu. Ĉiufoje, la nombro ŝanĝiĝas kun la nomo: `0`, `1`, `2`.

1. Ŝajnas, ke `$current++` iras al la sekva lumo per si mem. Sed ĝi malsukcesas kun tipkontrola eraro. `++` vidas la konstanton nur kiel ĝian nombron. Ĝi redonas `Int`: `red` fariĝas `1`. Sed `Int` ne estas `Light`. Do, por movi la lumon, atribuu la sekvan konstanton, kiel supre.

1. Raku kontrolas la tipon ĉe ĉiu atribuo, ne nur ĉe la unua. `$current` prenas `red`, `amber` aŭ `green`. Ĝi ne prenas aliajn valorojn, kiel nombron aŭ ĉenon. Ili ne estas `Light`. Tia atribuo donas tipkontrolan eraron.

{% include nav.html %}
