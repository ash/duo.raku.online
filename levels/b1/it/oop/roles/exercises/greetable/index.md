---
title: Una scatola con una misura
translations_gpt:
---

{% include menu.html %}

## Problema

Definisci un ruolo `Sized` con un metodo `describe`. Restituisce la stringa `size is <misura>` e per questo usa `self.size`.

Poi definisci una classe `Box` che assume il ruolo `Sized` e ha un attributo `size`. Crea una scatola con la misura `10`. Stampa il risultato della chiamata di `describe` su di essa. Su una seconda riga, stampa se la scatola `~~ Sized`. In altre parole, stampa se Raku vede che la scatola ha il ruolo.

## Esempio

Il programma stampa:

```
size is 10
True
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
