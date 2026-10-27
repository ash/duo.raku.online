---
title: Una scatola con una misura
translations_gpt:
---

{% include menu.html %}

## Problema

Crea un ruolo `Sized` con un metodo `describe`. Il metodo restituisce la stringa `size is <misura>`. Per la misura, usa `self.size`.

Poi crea una classe `Box`. Assume il ruolo `Sized` e ha un attributo `size`. Crea una scatola con la misura `10`. Chiama `describe` su di essa e stampa il risultato. Su una seconda riga, stampa il risultato di `~~ Sized` per la scatola. Mostra se la scatola assume il ruolo.

## Esempio

Il programma stampa:

```
size is 10
True
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
