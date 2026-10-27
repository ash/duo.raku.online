---
title: Flussi standard
translations_gpt:
---

{% include menu.html %}

Ogni programma ha tre _flussi standard_. Un flusso porta il testo dentro un programma o fuori dal programma. I tre flussi collegano il programma con il mondo esterno. Sono l'output standard, l'errore standard e l'input standard. Raku ti dà tre variabili speciali per questi flussi: `$*OUT`, `$*ERR` e `$*IN`.

L'output standard serve per il normale output di un programma. Lo usi già continuamente. `say` e `print` mandano il loro testo a `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

I messaggi di errore e gli altri messaggi sui problemi vanno all'errore standard. Questo è un flusso separato. Così questi messaggi non si mescolano con il vero output del programma. La routine `note` scrive sull'errore standard:

```raku
note 'Something looks wrong'; # goes to standard error
```

Questo è utile. Puoi mandare ognuno dei due flussi in un posto diverso. Questo si chiama redirigere. Per esempio, puoi salvare l'output in un file. Ma vedi ancora i messaggi di errore sullo schermo.

Puoi anche scrivere direttamente sui flussi. `$*OUT` e `$*ERR` sono due _handle_. Con un handle un programma può scrivere o leggere dati. Ogni handle ha i suoi metodi `say` e `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

Il terzo flusso, `$*IN`, è l'input standard. Porta il testo dentro il programma, per esempio dalla tastiera. L'hai già usato, ma non direttamente. La funzione `prompt` legge una riga da questo flusso. Torniamo alla lettura dell'input nella pagina sugli [handle di file](/it/oop/file-handles). Questo perché `$*IN` è un handle, proprio come un file aperto.

{% include nav.html %}
