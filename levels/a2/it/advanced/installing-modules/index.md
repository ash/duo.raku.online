---
title: Installare moduli dal web
translations_gpt: Installare moduli dal web
---

{% include menu.html %}

Puoi scrivere i tuoi moduli. Ma anche la comunità Raku pubblica molti moduli. Ci sono moduli per tante cose, dai framework web ai formati dati. Puoi installarli e usarli nei tuoi programmi.

## Installare con `zef`

Installi i moduli con `zef`. `zef` è il gestore di moduli standard. Arriva insieme a Rakudo. Per installare un modulo, dai a `zef` il nome del modulo:

```console
$ zef install JSON::Fast
```

`zef` scarica il modulo. Scarica anche tutto quello che serve al modulo. Poi esegue i test del modulo. Dopo, installa il modulo. Da quel momento il modulo è automaticamente nel percorso di ricerca. Così un programma può caricarlo solo con `use`. Non serve l'opzione `-I`:

```raku
use JSON::Fast;
```

Puoi anche cercare nell'ecosistema. L'ecosistema è fatto di tutti i moduli che le persone pubblicano. E puoi aggiornare o rimuovere moduli:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## Da dove provengono i moduli

I moduli pubblicati sono nell'_ecosistema_ Raku. Puoi guardarlo sul sito [raku.land](https://raku.land). Il sito elenca le distribuzioni disponibili. Una distribuzione contiene uno o più moduli. Il sito mostra anche la loro documentazione.

## `META6.json`

Una distribuzione da condividere ha un file con una descrizione. Il file si chiama `META6.json`. Contiene il nome e la versione della distribuzione. Elenca i moduli della distribuzione. Elenca anche le altre distribuzioni che le servono. `zef` legge questo file. Così sa cosa installare. Sa anche come le parti stanno insieme. Forse vuoi pubblicare un tuo modulo. Allora dagli un `META6.json` corretto. Con questo file, tutti gli altri possono installare il tuo modulo.

{% include nav.html %}
