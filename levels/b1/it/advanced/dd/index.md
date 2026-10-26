---
title: Debugging con `dd`
translations_gpt:
---

{% include menu.html %}

Ci sono diversi modi per fare il debug di un programma. Puoi semplicemente stampare i valori con `say`. Oppure puoi usare strumenti più avanzati che seguono il programma passo dopo passo. In questa sezione, guardiamo l'utile routine `dd`. È inclusa nel compilatore Rakudo, ma lo standard del linguaggio Raku non la contiene.

Il nome `dd` sta per _data dumper_. Le routine `say` e `put` servono per l'output normale di un programma. Ma `dd` stampa un valore in una forma utile per gli sviluppatori. È la stessa forma simile al codice che ottieni dal metodo [`.raku`](/it/advanced/representations/raku-method). Abbiamo visto questo metodo nella sezione precedente. `dd` stampa sul flusso di errore standard. Così il suo output non si mescola con quello che il tuo programma stampa per l'utente.

{% include nav.html %}
