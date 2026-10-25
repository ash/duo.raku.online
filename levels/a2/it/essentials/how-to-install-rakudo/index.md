---
title: Come installare Rakudo
translations_gpt:
---

{% include menu.html %}

Vi serve un compilatore per eseguire un programma Raku. Prima dovete installarlo. Questo corso usa Rakudo. Ci sono anche [Raku++](/it/essentials/the-rakupp-compiler) e [mutsu](/it/essentials/the-mutsu-interpreter). Li installate a parte. Leggete [Come installare Raku++](/it/essentials/how-to-install-rakupp) e [Come installare mutsu](/it/essentials/how-to-install-mutsu). Andate sul [sito di Rakudo](https://rakudo.org). Lì potete scaricare la versione giusta per il vostro sistema operativo.

## Sorgenti

Scaricate un programma di installazione per il vostro sistema da [rakudo.org/downloads](https://rakudo.org/downloads). Ci sono versioni per tutti i principali sistemi operativi: Windows, Mac OS e Linux. C'è anche il codice sorgente. Potete compilarlo voi stessi.

## Immagini Docker

Potete avere Rakudo anche come immagine docker. Con questa potete eseguire programmi. Potete anche provare piccoli script in una shell REPL. Tutte le istruzioni sono su [github.com/Raku/docker](https://github.com/Raku/docker).

## Numeri di versione

Un numero di versione di Rakudo ha due parti. Sono l'anno e il mese di uscita. Così potete vedere facilmente quanto è nuovo il vostro compilatore. Eseguite questo comando per vedere il suo numero di versione:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Qui vedete tre numeri di versione. Il primo è la versione di Rakudo stesso: `v2026.06`. Poi c'è la versione del linguaggio Raku: `v6.d`. Per ora, ogni aggiornamento del linguaggio prende la lettera successiva. Questa lettera è la parte minore, o piccola, della versione. Per esempio, dopo viene `v6.e`, e così via. Alla fine vedete il nome della macchina virtuale. Questo compilatore usa MoarVM versione `2026.06`.

{% include nav.html %}
