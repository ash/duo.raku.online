---
title: Raportu kaj resaniĝu
translations_gpt:
---

{% include menu.html %}

## Problemo

Montru, kiel programo povas resaniĝi per la helpo de `CATCH`. Ĝi daŭrigas kun prudenta defaŭlta valoro.

Antaŭ bloko, deklaru variablon `$timeout` kun la defaŭlta valoro `30`. Ene de la bloko, faru `die 'config missing'`. Poste, en linio, kiu neniam ruliĝas, provu doni al `$timeout` la valoron `60`. Uzu fazeron `CATCH`, kies bloko `default` presas `warning: <message>; keeping default`. Post la bloko, presu `timeout is <timeout> seconds`.

## Ekzemplo

La programo presas:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
