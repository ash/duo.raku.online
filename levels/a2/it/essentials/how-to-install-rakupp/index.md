---
title: Come installare Raku++
translations_gpt:
---

{% include menu.html %}

Puoi prendere Raku++ dal suo sito web, [raku.online](https://raku.online). È anche su GitHub: [github.com/ash/rakupp](https://github.com/ash/rakupp). Quando lo installi, ricevi un solo file di programma: `rakupp`. Non devi configurare nient'altro. Raku++ non ha una macchina virtuale separata da installare.

## Il programma di installazione

Su macOS, Linux e i sistemi BSD, ti serve un solo comando. Scarica la build per il tuo computer. Controlla la build. Poi mette `rakupp` nel tuo `PATH`. Non servono i diritti di amministratore:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Su Windows, usa invece una finestra di PowerShell. Un altro modo è il programma di installazione, `rakupp-setup-windows-x64.exe`. Puoi scaricarlo dalla pagina delle release del repository. Ecco il comando per PowerShell:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Il programma di installazione chiede se vuoi anche il nome `raku` per Raku++. Dopo, apri un nuovo terminale. Allora il nuovo `PATH` inizia a funzionare. Più tardi, `rakupp upgrade` lo aggiorna all'ultima release.

## Altri modi per installarlo

* Su macOS, con Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Con Docker, non devi installare niente. `docker run --rm -it ghcr.io/ash/rakupp` avvia il REPL interattivo.
* Ci sono archivi già pronti per ogni piattaforma. Si trovano nella pagina delle release del repository.
* Raku++ è scritto in C++. Quindi puoi anche compilarlo tu dal codice sorgente. Il repository dice quali strumenti ti servono.

## Numeri di versione

Quale versione hai? Usa l'opzione `--version`:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

La riga mostra tre cose. La prima è la release di Raku++ stesso: `5.4.1`. La seconda è la data della build. La terza è la piattaforma per questo file di programma. La versione del linguaggio Raku è un'altra cosa. Puoi chiederla al linguaggio stesso:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Confronta questo con il messaggio di versione di Rakudo. Si trova nella [pagina di installazione di Rakudo](/it/essentials/how-to-install-rakudo). Puoi vedere come i due compilatori mostrano le loro versioni.

{% include nav.html %}
