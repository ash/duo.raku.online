---
title: Flussi standard
translations_gpt:
---

{% include menu.html %}

Ogni programma ha tre _flussi standard_ che lo collegano al suo ambiente. Sono l'output standard, l'errore standard e l'input standard. Raku li rende disponibili con tre variabili speciali: `$*OUT`, `$*ERR` e `$*IN`.

In realtà hai scritto sull'output standard fin dall'inizio. Sia `say` sia `print` mandano il loro testo a `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

I messaggi di errore e gli altri messaggi sui problemi vanno in un flusso separato, l'errore standard. In questo modo non si mescolano con il vero output del programma. La routine `note` scrive lì:

```raku
note 'Something looks wrong'; # goes to standard error
```

Tenerli separati è utile perché puoi redirigere ogni flusso per conto suo. Per esempio, puoi salvare l'output di un programma in un file. I suoi messaggi di errore compaiono comunque sullo schermo.

Puoi anche scrivere direttamente sui flussi. Sia `$*OUT` sia `$*ERR` sono _handle_ con i loro metodi `say` e `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

Il terzo flusso, `$*IN`, è l'input standard. L'hai già usato, ma non direttamente: `prompt` ne legge una riga. Torneremo alla lettura dell'input nell'argomento sugli [handle di file](/it/oop/file-handles). Questo perché `$*IN` è un handle, proprio come un file aperto.

{% include nav.html %}
