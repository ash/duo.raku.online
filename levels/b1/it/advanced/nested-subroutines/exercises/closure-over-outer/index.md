---
title: Chiusura sull'esterno
translations_gpt: Italian
---

{% include menu.html %}

## Problema

Una subroutine annidata è una *closure*. Questo significa che può vedere le variabili della subroutine che la contiene. Scrivi una subroutine `greet($name)` con un helper annidato `message` che **non** prende argomenti. L'helper restituisce `"Hello, $name!"` e legge `$name` direttamente dalla `greet` che lo contiene. Dentro `greet`, stampa quello che restituisce `message`. Poi chiama `greet('Anna')`.

## Esempio

Il programma stampa:

```
Hello, Anna!
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
