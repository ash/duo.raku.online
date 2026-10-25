---
title: Il compilatore Raku++
translations_gpt:
---

{% include menu.html %}

**Raku++** è un secondo compilatore Raku. Il suo file di programma si chiama `rakupp`. La prima versione è uscita nel luglio 2026. Rakudo gira sulla macchina virtuale MoarVM. Raku++ è diverso. Il suo autore l'ha scritto in **C++**. Non ha bisogno di una sua macchina virtuale.

È un **interprete** e un **compilatore** allo stesso tempo. Può eseguire un programma direttamente. Può anche trasformare un programma in codice nativo. Così il programma diventa più veloce. Non deve prima avviare un grande sistema di runtime. Quindi `rakupp` parte in pochi millisecondi. Per questo è comodo per gli script brevi. È comodo anche per il lavoro di ogni giorno sulla riga di comando. Il suo autore lo chiama il compilatore Raku più veloce.

Normalmente, Raku++ supporta Raku 6.d. Supporta anche 6.e. Un programma chiede 6.e con `use v6.e.PREVIEW`. La versione 5.4.1 è uscita nell'ottobre 2026. Supera tutti i 1.425 file di test di Roast. Roast è l'insieme ufficiale dei test di Raku.

Raku++ gira anche in un browser web. Per questo, è compilato in WebAssembly. Il campo da gioco su [raku.online](https://raku.online) usa Raku++. Lì puoi provare Raku senza installare niente.

## Modalità interprete e compilatore

Esegui un programma direttamente, come con Rakudo:

```console
$ rakupp hello.raku
```

Oppure chiedi a Raku++ di fare un file di programma nativo. Funziona da solo. Ed è ancora più veloce:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Per imparare ogni giorno, ti serve solo la semplice modalità interprete. Le modalità di compilazione servono per avere più velocità.

## Codice sorgente

Raku++ è open source. Lo trovi su [github.com/ash/rakupp](https://github.com/ash/rakupp). La pagina ha anche i file delle release e le istruzioni per compilarlo.

{% include nav.html %}
