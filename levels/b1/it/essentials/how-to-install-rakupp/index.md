---
title: Come installare Raku++
translations_gpt:
---

{% include menu.html %}

Raku++ è disponibile sul suo sito web, [raku.online](https://raku.online). Puoi anche prenderlo dal suo repository GitHub, [github.com/ash/rakupp](https://github.com/ash/rakupp). Quando lo installi, ricevi un unico file eseguibile chiamato `rakupp`. Non c'è altro da configurare, perché Raku++ non ha una macchina virtuale separata.

## Il programma di installazione

Su macOS, Linux e i sistemi BSD, un solo comando fa tutto. Scarica la build per la tua macchina e la controlla. Poi mette `rakupp` nel tuo `PATH`. Non ti servono i diritti di amministratore:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Su Windows, usa invece una finestra di PowerShell. Puoi anche usare la procedura guidata di installazione, `rakupp-setup-windows-x64.exe`. Si trova nella pagina delle release del repository. In PowerShell, esegui questo:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Il programma di installazione chiede se vuoi avere Raku++ anche con il nome `raku`. Dopo, apri un nuovo terminale, così il nuovo `PATH` inizia a funzionare. In seguito, `rakupp upgrade` lo sostituisce con la release più recente.

## Altri modi per installarlo

* Su macOS, con Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Con Docker, non devi installare nulla: `docker run --rm -it ghcr.io/ash/rakupp` avvia il REPL interattivo.
* Gli archivi già pronti per ogni piattaforma sono nella pagina delle release del repository.
* Raku++ è scritto in C++. Quindi puoi anche compilarlo tu stesso dal codice sorgente. Il repository spiega quali strumenti ti servono.

## Numeri di versione

L'opzione `--version` mostra quale versione hai:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

La riga mostra la release di Raku++ stesso, `5.4.1`. Mostra anche la data della build e la piattaforma del binario. La versione del linguaggio Raku è un'altra cosa. Puoi chiederla al linguaggio stesso:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Confronta questo con il messaggio di versione di Rakudo nella [pagina di installazione di Rakudo](/it/essentials/how-to-install-rakudo). Così puoi vedere come i due compilatori si presentano.

{% include nav.html %}
