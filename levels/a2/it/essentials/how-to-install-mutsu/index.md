---
title: Come installare mutsu
translations_gpt:
---

{% include menu.html %}

mutsu ha build già pronte per macOS e Linux. Funzionano su processori Intel/AMD e anche ARM. Il progetto è su GitHub: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Trovi le build nella sua pagina delle release. Ogni build ha due file di programma: `mutsu` stesso e `mzef`. `mzef` è il suo gestore di pacchetti. Installa i moduli Raku.

## Con mise

Il modo più facile per installare una release è [mise](https://mise.jdx.dev/). Questo strumento installa e aggiorna strumenti per sviluppatori. Ti serve un solo comando. Scarica la build per il tuo computer. Mette anche `mutsu` e `mzef` nel tuo `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Con Docker

Con Docker, puoi usare mutsu senza installarlo. Funziona su ogni sistema con Docker, anche su Windows. Questo comando avvia il REPL interattivo:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

E questo comando esegue un programma dalla directory corrente:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Compilazione dal codice sorgente

mutsu è scritto in Rust. Quindi puoi anche compilarlo tu con Cargo. Usa il codice sorgente del suo repository. Il repository spiega i dettagli.

## Numeri di versione

Quale versione hai? Usa l'opzione `--version`:

```console
$ mutsu --version
mutsu 0.24.0
```

Questa è la release di mutsu stesso. La versione del linguaggio Raku è un'altra cosa. La chiedi al linguaggio, come con gli altri compilatori:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Confronta questo con [Rakudo](/it/essentials/how-to-install-rakudo) e [Raku++](/it/essentials/how-to-install-rakupp). Guarda come mostrano le loro versioni.

{% include nav.html %}
