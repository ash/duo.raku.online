---
title: Superregi la dinamikan
translations_gpt:
---

{% include menu.html %}

## Problemo

Montru, kiel dinamika variablo pasas tra rutino en la mezo. Tiu rutino scias nenion pri ĝi.

Skribu subrutinon `log-it($msg)`, kiu presas la mesaĝon kun dinamika variablo `$*prefix` antaŭ ĝi. Skribu duan subrutinon `task`, kiu nur vokas `log-it('working')`. Ĝi mem neniam mencias `$*prefix`. Poste voku `task` dufoje, ĉiufoje el ene de bloko. Ĉiu bloko agordas `$*prefix` al alia valoro: unue `INFO`, poste `DEBUG`.

## Ekzemplo

La programo presas:

```
INFO: working
DEBUG: working
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
