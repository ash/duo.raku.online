---
title: Superregi la dinamikan
translations_gpt:
---

{% include menu.html %}

## Problemo

Montru, kiel dinamika variablo iras tra rutino en la mezo. Ĉi tiu rutino scias nenion pri la variablo.

Skribu subrutinon `log-it($msg)`. Ĝi presas la mesaĝon. Antaŭ la mesaĝo, ĝi presas dinamikan variablon `$*prefix`. Skribu duan subrutinon, `task`. Ĝi nur vokas `log-it('working')`. Ĝi mem neniam uzas `$*prefix`. Poste voku `task` du fojojn. Ĉiufoje voku ĝin el ene de bloko. Ĉiu bloko donas al `$*prefix` alian valoron: unue `INFO`, poste `DEBUG`.

## Ekzemplo

La programo presas:

```
INFO: working
DEBUG: working
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
