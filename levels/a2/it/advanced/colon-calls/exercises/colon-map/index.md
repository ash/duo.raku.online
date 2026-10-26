---
title: Un map con due punti
translations_gpt:
---

{% include menu.html %}

## Problema

Ecco un'espressione. Raddoppia i numeri da `1` a `10`. Poi tiene solo i numeri maggiori di `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Cambia il codice. La chiamata del metodo `grep` deve usare la forma con i due punti, non le parentesi. Non cambiare il resto della catena. Ricorda: la forma con i due punti prende il resto dell'istruzione. Quindi solo l'ultima chiamata in una catena può usarla.

## Esempio

Il programma stampa:

```
(12 14 16 18 20)
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
