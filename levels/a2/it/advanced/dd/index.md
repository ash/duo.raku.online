---
title: Debugging con `dd`
translations_gpt:
---

{% include menu.html %}

Puoi fare il debug di un programma in modi diversi. Fare il debug vuol dire trovare e correggere gli errori. Il modo più semplice è stampare i valori con `say`. Ci sono anche strumenti più complessi. Seguono il programma passo dopo passo. In questa sezione, guardiamo l'utile routine `dd`. È integrata nel compilatore Rakudo. Ma non fa parte dello standard del linguaggio Raku.

Il nome `dd` vuol dire _data dumper_. Un data dumper stampa i dati per il programmatore. `say` e `put` servono per l'output normale di un programma. Ma `dd` è diverso. Mostra un valore in una forma per i programmatori. Questa forma sembra codice. È la stessa forma che dà il metodo [`.raku`](/it/advanced/representations/raku-method). Hai visto questo metodo nella sezione precedente. `dd` stampa sul flusso di errore standard. Così il suo output non si mescola con l'output per l'utente.

{% include nav.html %}
