---
title: Variabili speciali integrate
---

{% include menu.html %}

Raku definisce un insieme di variabili per te. La maggior parte di esse sono _dinamiche_, con il twigil `*`. Quindi puoi leggerle ovunque, come hai visto con le [variabili dinamiche](/it/advanced/special-variables/dynamic-variables). Puoi anche sovrascriverle per uno scope. Ecco quelle che ti serviranno più spesso.

## Stream standard

L'input e l'output passano per tre variabili dinamiche: `$*OUT` per lo standard output, `$*ERR` per lo standard error e `$*IN` per lo standard input. `say` e `print` scrivono su `$*OUT`. Per mandare invece del testo allo standard error, chiama il metodo su `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Dato che queste variabili sono dinamiche, puoi reindirizzare `$*OUT` in un blocco. Allora tutto quello che chiami dentro quel blocco manda il suo output al nuovo posto. Non devi cambiare niente di quel codice.

## Il programma e il suo processo

Alcune variabili danno informazioni sul programma stesso in esecuzione:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

I loro valori cambiano ogni volta che esegui il programma. Quindi qui non c'è un output fisso da mostrare.

## Riga di comando e ambiente

Gli argomenti e l'ambiente arrivano in due contenitori pronti all'uso:

* `@*ARGS` — la lista degli argomenti da riga di comando (una subroutine `MAIN` riceve gli stessi)
* `%*ENV` — le variabili d'ambiente, in un hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Queste variabili predefinite ti evitano di raccogliere da solo le stesse informazioni. Sono anche dinamiche, quindi Raku le cerca attraverso lo stack delle chiamate. Così puoi sovrascrivere qualsiasi variabile predefinita `$*` per uno scope. Funziona esattamente come con una tua variabile `$*`.

Oltre a queste variabili dinamiche, Raku ha anche le variabili predefinite `?` di compilazione: `$?FILE` e `$?LINE`. Le hai già viste nella pagina sui [twigil](/it/advanced/special-variables/twigils).

{% include nav.html %}
