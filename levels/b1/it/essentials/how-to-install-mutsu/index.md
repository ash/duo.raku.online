---
title: Come installare mutsu
translations_gpt:
---

{% include menu.html %}

mutsu offre build già pronte per macOS e Linux. Ci sono build sia per processori Intel/AMD sia per processori ARM. Si trovano nella pagina delle release del suo repository GitHub, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Ogni build contiene due file eseguibili: `mutsu` stesso e `mzef`, il suo gestore di pacchetti.

## Con mise

Il modo più semplice per installare una release è [mise](https://mise.jdx.dev/). È uno strumento che installa e aggiorna gli strumenti per sviluppatori. Un solo comando scarica la build per la tua macchina. Mette anche sia `mutsu` sia `mzef` nel tuo `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Con Docker

Se sul tuo sistema gira Docker, puoi usare mutsu senza installarlo. Funziona anche su Windows. Questo comando avvia il REPL interattivo:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

E questo esegue un programma dalla directory corrente:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Compilazione dal codice sorgente

mutsu è scritto in Rust. Quindi puoi anche compilarlo tu stesso con Cargo. Il codice sorgente è nel suo repository, che spiega anche i dettagli.

## Numeri di versione

L'opzione `--version` mostra quale versione hai:

```console
$ mutsu --version
mutsu 0.24.0
```

Questa è la release di mutsu stesso. Come per gli altri compilatori, il linguaggio ti può dire la sua versione:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Confronta queste informazioni con il modo in cui si presentano [Rakudo](/it/essentials/how-to-install-rakudo) e [Raku++](/it/essentials/how-to-install-rakupp).

{% include nav.html %}
