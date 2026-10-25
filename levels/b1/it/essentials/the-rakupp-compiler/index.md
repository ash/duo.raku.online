---
title: Il compilatore Raku++
translations_gpt:
---

{% include menu.html %}

**Raku++** è un secondo compilatore Raku. Il suo file eseguibile si chiama `rakupp`, e la prima release è uscita nel luglio 2026. Rakudo gira sulla macchina virtuale MoarVM. Raku++, invece, è scritto in **C++**. Non ha bisogno di una sua macchina virtuale.

È sia un **interprete** sia un **compilatore**. Può eseguire un programma direttamente. Oppure può tradurlo in codice nativo per avere più velocità. Non c'è un runtime pesante da avviare. Quindi `rakupp` parte in pochi millisecondi. Questo lo rende piacevole per gli script brevi e per il lavoro di ogni giorno nel terminale. Il suo autore lo chiama il compilatore Raku più veloce.

Normalmente, Raku++ supporta Raku 6.d. Supporta 6.e quando un programma lo chiede con `use v6.e.PREVIEW`. La versione 5.4.1 è uscita nell'ottobre 2026. Supera tutti i 1.425 file di test della suite Roast. Roast è l'insieme ufficiale dei test di Raku.

Raku++ gira anche in un browser web. È compilato in WebAssembly ed è il motore del campo da gioco su [raku.online](https://raku.online). Lì puoi provare Raku senza installare nulla.

## Modalità interprete e compilatore

Puoi eseguire un programma subito, proprio come con Rakudo:

```console
$ rakupp hello.raku
```

Oppure chiedi a Raku++ di creare da un programma un eseguibile nativo separato. Gira ancora più in fretta:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Per imparare ogni giorno, la semplice modalità interprete è tutto ciò che ti serve. Le modalità di compilazione ci sono per quando vuoi più velocità.

## Codice sorgente

Raku++ è open source. Puoi trovarlo su [github.com/ash/rakupp](https://github.com/ash/rakupp). Lì ci sono anche i file delle release già pronti e le istruzioni di compilazione.

{% include nav.html %}
