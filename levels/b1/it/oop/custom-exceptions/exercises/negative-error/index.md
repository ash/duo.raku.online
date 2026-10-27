---
title: Un errore per i numeri negativi
translations_gpt:
---

{% include menu.html %}

## Problema

Definisci una classe di eccezione personalizzata che si chiama `Negative`. Eredita da `Exception` e ha un attributo `n`. Il suo metodo `message` restituisce `<n> is negative`.

Scrivi una subroutine `check($n)`. Quando il suo argomento è sotto zero, solleva una `Negative` che porta con sé questo `n`. Altrimenti restituisce l'argomento. Poi, dentro un blocco, chiama `check(-5)`. Usa un phaser `CATCH` con `when Negative` per stampare il messaggio dell'eccezione.

Infine, dopo il blocco, solleva un'altra `Negative` con `n` uguale a `-10`. Nessun `CATCH` protegge questo punto. Questo mostra che un'eccezione così chiude il programma.

## Esempio

Il programma stampa:

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
