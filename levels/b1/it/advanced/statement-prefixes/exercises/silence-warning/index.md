---
title: Silenziare un avviso
translations_gpt:
---

{% include menu.html %}

## Problema

`quietly` nasconde gli avvisi e, come `do`, restituisce il valore del suo blocco. Dichiarate una variabile per un nome senza valore. Poi costruite un saluto `"Hello, " ~ $name ~ "!"` dentro un blocco `quietly`. Così l'avviso “uninitialized value” viene nascosto. Assegnate il valore del blocco a `$greeting` e stampatelo.

## Esempio

Il programma stampa:

```
Hello, !
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
