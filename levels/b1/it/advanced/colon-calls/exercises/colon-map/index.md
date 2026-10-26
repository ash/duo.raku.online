---
title: Un map con due punti
translations_gpt:
---

{% include menu.html %}

## Problema

Questa espressione raddoppia i numeri da `1` a `10`. Poi tiene solo quelli che sono maggiori di `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Riscrivi il codice in modo che la chiamata a `grep` usi la forma con i due punti, non le parentesi. Non cambiare il resto della catena. Ricorda che la forma con i due punti prende tutto il resto dell'istruzione. Quindi solo l'ultima chiamata in una catena può usarla.

## Esempio

Il programma stampa:

```
(12 14 16 18 20)
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
