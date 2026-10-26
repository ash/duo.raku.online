---
title: Chiusura sull'esterno
translations_gpt: Italian
---

{% include menu.html %}

## Problema

Una subroutine annidata è una *closure*. Può vedere le variabili della subroutine esterna. Scrivi una subroutine `greet($name)`. Dentro, definisci un helper `message`. L'helper **non** prende argomenti. Restituisce `"Hello, $name!"`. Prende `$name` direttamente dalla `greet` esterna. Dentro `greet`, stampa il risultato di `message`. Poi chiama `greet('Anna')`.

## Esempio

Il programma stampa:

```
Hello, Anna!
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
