---
title: Pubblicare con fez
translations_gpt: Pubblicare con fez
---

{% include menu.html %}

L'argomento precedente ha presentato `fez`, uno strumento che carica le distribuzioni nell'ecosistema Raku. Non sei obbligato a usare `fez`, perché ci sono altri modi per pubblicare. Ma è la scelta più comune. Inoltre fa più che caricare. Può preparare per te una nuova distribuzione e gestire il tuo account di autore. Installalo con `zef`:

```
zef install fez
```

## Creare una distribuzione

Puoi creare a mano un `META6.json` e le directory `lib/` e `t/`. Oppure puoi lasciare che `fez` li prepari per te:

```
fez init My::Greeting
```

`fez init` crea una nuova distribuzione su cui puoi lavorare. È una directory di progetto con un `META6.json` già pronto e la struttura standard. Così puoi iniziare subito a scrivere il codice sotto `lib/` e i test sotto `t/`. Non devi preparare tu il file dei metadati.

## Registrazione e accesso

Per pubblicare, ti serve un account nell'ecosistema. Lo crei una sola volta con `fez register`, che chiede nome utente, email e password. Poi accedi con `fez login`. Questo comando salva la tua chiave, così i comandi successivi sanno chi sei:

```
fez register
fez login
```

Il tuo nome utente è importante. Il `META6.json` di una distribuzione deve avere un campo `auth` con il valore `zef:<nomeutente>`. È così che l'ecosistema sa che il caricamento viene davvero da te.

## Caricamento

Quando hai un account e la distribuzione è pronta, esegui `fez upload`. Questo comando impacchetta la directory corrente e la invia:

```
fez upload
```

Dopo, chiunque può installarla per nome con `zef install My::Greeting`. Puoi caricare ogni versione una sola volta. Quindi ricordati di aumentare la `version` nel `META6.json` prima di pubblicare un aggiornamento.

## Altri comandi utili

Ecco alcuni altri comandi `fez` che ti serviranno:

* `fez review` — controlla una distribuzione per trovare possibili problemi prima di caricarla;
* `fez list` — mostra le distribuzioni che hai già pubblicato;
* `fez refresh` — ricostruisce il `META6.json` dai file che ci sono ora sul disco.

> Per tutti questi comandi servono `fez` installato e una connessione di rete. Tutto quello che viene dopo `init` richiede anche un account nell'ecosistema.

{% include nav.html %}
