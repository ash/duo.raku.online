---
title: Come installare Rakudo
translations_gpt:
---

{% include menu.html %}

Per eseguire un programma in Raku, dovete installare un compilatore. Questo corso usa Rakudo. Gli altri due, [Raku++](/it/essentials/the-rakupp-compiler) e [mutsu](/it/essentials/the-mutsu-interpreter), si installano a parte. Vedete [Come installare Raku++](/it/essentials/how-to-install-rakupp) e [Come installare mutsu](/it/essentials/how-to-install-mutsu). Visitate [il sito di Rakudo](https://rakudo.org) e scaricate la versione per il vostro sistema operativo.

## Sorgenti

Potete scaricare un programma di installazione per il vostro sistema da [rakudo.org/downloads](https://rakudo.org/downloads). Ci sono versioni per tutti i principali sistemi operativi: Windows, Mac OS e Linux. Potete anche prendere il codice sorgente e compilarlo voi stessi.

## Immagini Docker

Rakudo è disponibile anche come immagine docker. Potete usarla per eseguire programmi. Va bene anche per provare piccoli script in una shell REPL. Troverete tutte le istruzioni su [github.com/Raku/docker](https://github.com/Raku/docker).

## Numeri di versione

Un numero di versione di Rakudo ha due parti: l'anno e il mese di rilascio. Così potete vedere facilmente quanto è recente il vostro compilatore. Eseguite questo comando per vederne il numero di versione:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Qui potete vedere tre numeri di versione. Il primo è la versione di Rakudo stesso: `v2026.06`. Poi viene la versione del linguaggio Raku: `v6.d`. Per ora, gli aggiornamenti prendono la lettera successiva come versione minore. Per esempio, la prossima è `v6.e`, e così via. Infine vedete il nome della macchina virtuale di questo compilatore: MoarVM versione `2026.06`.

{% include nav.html %}
