---
title: Pianificare due controlli
translations_gpt:
---

{% include menu.html %}

## Problema

Scrivi un file di test. Usa `plan`, non `done-testing`. Con `plan`, indica all'inizio che il file ha esattamente due controlli. Fai questi due controlli:

1. Con `is-deeply`, controlla se la lista `3, 1, 2` dà `[1, 2, 3]` dopo l'ordinamento.
1. Con `is`, controlla se `10 % 3` è uguale a `1`.

Scrivi una tua breve descrizione per ogni controllo.

## Esempio

Usa le descrizioni `sorted` e `remainder`. Allora il programma stampa:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
