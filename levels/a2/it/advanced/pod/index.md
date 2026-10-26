---
title: Documentare il codice
translations_gpt:
---

{% include menu.html %}

Raku ha un suo modo per scrivere la documentazione. Fa parte del linguaggio. Il suo nome è _Pod_, o _Rakudoc_. La documentazione si scrive direttamente nel file sorgente. Per questo si usano righe che iniziano con `=`. Queste righe si chiamano direttive. Il compilatore può mostrare la documentazione come testo formattato. Può anche darla al programma.

Questa sezione mostra le direttive Pod di base. Mostra anche i codici di formattazione. Con questi si segnano le parole nel testo. Infine mostra come ottenere la documentazione. È possibile averla come testo formattato con `raku --doc`. Oppure è possibile averla come dati, attraverso la variabile `$=pod`.

{% include nav.html %}
