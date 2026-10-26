---
title: Pubblicare con fez
translations_gpt: Pubblicare con fez
---

{% include menu.html %}

L'argomento precedente ha mostrato `fez`. Con `fez` carichi una distribuzione nell'ecosistema Raku. Non devi per forza usare `fez`. Ci sono altri modi per pubblicare. Ma quasi tutti usano `fez`. E `fez` fa più che caricare. Può anche creare per te una nuova distribuzione. Può gestire anche il tuo account di autore. Installa `fez` con `zef`:

```
zef install fez
```

## Creare una nuova distribuzione

Puoi creare da solo il `META6.json` e le directory `lib/` e `t/`. Ma `fez` può crearli per te:

```
fez init My::Greeting
```

`fez init` crea la base di una nuova distribuzione. È una directory di progetto. Ha già un `META6.json` e la struttura standard. Così puoi iniziare subito a scrivere. Il codice va sotto `lib/`, e i test vanno sotto `t/`. Non devi preparare tu il `META6.json`.

## Registrazione e accesso

Per pubblicare, ti serve un account nell'ecosistema. Crei l'account una sola volta, con `fez register`. Ti chiede un nome utente, un'email e una password. Poi accedi con `fez login`. Questo comando salva la tua chiave. Con questa chiave, i comandi successivi sanno chi sei:

```
fez register
fez login
```

Il tuo nome utente è importante. Il `META6.json` di una distribuzione deve avere un campo `auth`. Il suo valore è `zef:<nomeutente>`. Così l'ecosistema sa che il caricamento è davvero tuo.

## Caricamento

Hai un account, e la distribuzione è pronta. Ora `fez upload` fa un pacchetto con la directory corrente e lo invia:

```
fez upload
```

Dopo, chiunque può installarla per nome con `zef install My::Greeting`. Puoi caricare ogni versione solo una volta. Quindi, prima di un aggiornamento, alza la `version` nel `META6.json`.

## Altri comandi utili

Userai anche questi comandi `fez`:

* `fez review` — cerca possibili problemi in una distribuzione prima del caricamento;
* `fez list` — mostra le distribuzioni che hai già pubblicato;
* `fez refresh` — crea di nuovo il `META6.json` dai file che sono ora sul disco.

> Tutti questi comandi hanno bisogno di `fez` installato e della rete. I comandi dopo `init` hanno bisogno anche di un account nell'ecosistema.

{% include nav.html %}
