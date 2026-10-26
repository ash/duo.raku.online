---
title: 'Solvo: Trafiklumo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `my Light $current` estas normala variablo, kaj vi povas ŝanĝi ĝin. La sola limo estas, ke ĝi devas teni `Light`. Kiam vi atribuas la sekvan konstanton, la lumo iras plu. La nombro sekvas la nomon ĉiufoje: `0`, `1`, `2`.

1. `$current++` aspektas, kvazaŭ ĝi devus iri al la sekva lumo per si mem. Sed ĝi malsukcesas kun tipkontrola eraro. `++` uzas la konstanton kiel ĝian simplan nombron kaj redonas `Int` (`red` fariĝas `1`). Sed `Int` ne konvenas al la tipo `Light`. Do vi movas la lumon, atribuante la sekvan konstanton, kiel supre.

1. La tipkontrolo funkcias por ĉiu atribuo, ne nur por la unua. `$current` akceptas `red`, `amber` aŭ `green`. Io, kio ne estas `Light`, donas tipkontrolan eraron. Tio validas, ekzemple, por simpla nombro aŭ ĉeno.

{% include nav.html %}
