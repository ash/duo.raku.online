---
title: Silenziare un avviso
translations_gpt:
---

{% include menu.html %}

## Problema

`quietly` nasconde gli avvisi. Come `do`, restituisce il valore del suo blocco. Create una variabile per un nome, ma non datele un valore. Poi costruite un saluto `"Hello, " ~ $name ~ "!"` dentro un blocco `quietly`. Così l'avviso “uninitialized value” resta nascosto. Assegnate il valore del blocco a `$greeting` e stampatelo.

## Esempio

Il programma stampa:

```
Hello, !
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
