---
title: "Indicate l'errore"
translations_gpt:
---

{% include menu.html %}

## Problema

Scrivi una subroutine `risky`. Fa `die 'sub failed'`. Poi chiama `risky` dentro un blocco con un phaser `CATCH`. Prima il `CATCH` stampa il nome del tipo dell'eccezione, con `.^name`. Poi stampa il suo messaggio, con `.message`. Questo mostra un'altra cosa su `CATCH`. Gestisce anche le eccezioni del codice che il blocco *chiama*. Il `die` non deve per forza stare nel blocco stesso.

## Esempio

Il programma stampa:

```
X::AdHoc
sub failed
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
