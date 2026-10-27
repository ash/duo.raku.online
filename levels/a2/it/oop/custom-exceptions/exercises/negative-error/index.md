---
title: Un errore per i numeri negativi
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una classe di eccezione personalizzata `Negative`. È una classe per i tuoi errori. Eredita da `Exception`. Ha un attributo `n`. Il suo metodo `message` restituisce `<n> is negative`.

Scrivi una subroutine `check($n)`. Se il suo argomento è minore di zero, solleva una `Negative`. Questa `Negative` contiene l'`n`. Altrimenti la subroutine restituisce l'argomento. Poi chiama `check(-5)` dentro un blocco. Aggiungi un phaser `CATCH` con `when Negative`. Il phaser stampa il messaggio dell'eccezione.

Alla fine, dopo il blocco, solleva un'altra `Negative`. Il suo `n` è `-10`. Lì nessun `CATCH` la intercetta. Questo mostra che cosa succede allora. L'eccezione chiude il programma.

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
