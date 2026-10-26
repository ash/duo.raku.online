---
title: Pianificare due controlli
translations_gpt:
---

{% include menu.html %}

## Problema

Scrivi un file di test che usi `plan`, non `done-testing`. Con `plan`, indica all'inizio che il file contiene esattamente due controlli. Fai questi controlli:

1. Con `is-deeply`, controlla che ordinare la lista `3, 1, 2` dia `[1, 2, 3]`.
1. Con `is`, controlla che `10 % 3` sia uguale a `1`.

Dai a ogni controllo una breve descrizione che scegli tu.

## Esempio

Se le descrizioni sono `sorted` e `remainder`, il programma stampa:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
