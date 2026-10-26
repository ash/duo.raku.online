---
title: Installare moduli dal web
translations_gpt: Installare moduli dal web
---

{% include menu.html %}

Non sei limitato ai moduli che scrivi tu stesso. La comunità Raku ha pubblicato una grande raccolta di moduli. Coprono di tutto, dai framework web ai formati dati. Puoi installarli e usarli nei tuoi programmi.

## L'installer `zef`

I moduli si installano con `zef`, che è il gestore di moduli standard. Viene distribuito insieme a Rakudo. Per installare un modulo, passa il suo nome a `zef`:

```console
$ zef install JSON::Fast
```

`zef` scarica il modulo insieme a tutto ciò da cui dipende. Poi esegue i test del modulo e lo installa. Un modulo installato è automaticamente nel percorso di ricerca. Così un programma può caricarlo con un semplice `use`. Non serve l'opzione `-I`:

```raku
use JSON::Fast;
```

`zef` può anche cercare nell'ecosistema. Inoltre può aggiornare o rimuovere moduli:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## Da dove provengono i moduli

I moduli pubblicati fanno parte dell'_ecosistema_ Raku. Puoi esplorarlo sul sito [raku.land](https://raku.land). Il sito elenca le distribuzioni disponibili e la loro documentazione.

## `META6.json`

Una distribuzione pensata per essere condivisa ha un file di descrizione chiamato `META6.json`. Questo file registra il nome e la versione della distribuzione. Elenca anche i moduli che fornisce e le altre distribuzioni da cui dipende. `zef` legge questo file. Da qui `zef` capisce cosa installare e come le parti stanno insieme. Se pubblichi un tuo modulo, gli serve un `META6.json` corretto. È questo che permette a tutti gli altri di installarlo.

{% include nav.html %}
