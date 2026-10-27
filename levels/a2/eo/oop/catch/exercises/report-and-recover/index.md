---
title: Raportu kaj resaniĝu
translations_gpt:
---

{% include menu.html %}

## Problemo

Montru, kiel `CATCH` helpas al programo resaniĝi post eraro. La programo ne haltas. Ĝi daŭras kun sekura defaŭlta valoro.

Antaŭ bloko, faru variablon `$timeout`. Donu al ĝi la defaŭltan valoron `30`. Ene de la bloko, faru `die 'config missing'`. En la sekva linio, provu doni al `$timeout` la valoron `60`. La programo neniam atingas ĉi tiun linion. Aldonu fazeron `CATCH` kun bloko `default`. Ĝi presas `warning: <message>; keeping default`. Post la bloko, presu `timeout is <timeout> seconds`.

## Ekzemplo

La programo presas:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
