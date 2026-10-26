---
title: Variabili speciali integrate
---

{% include menu.html %}

Raku ha un insieme di variabili pronte per te. La maggior parte di loro sono _dinamiche_, con il twigil `*`. Conosci già le [variabili dinamiche](/it/advanced/special-variables/dynamic-variables). Quindi puoi leggere queste variabili ovunque. Puoi anche dare loro un nuovo valore per uno scope. Ecco le variabili che ti servono più spesso.

## Stream standard

L'input e l'output passano per tre variabili dinamiche. `$*OUT` è lo standard output. `$*ERR` è lo standard error, un output per i messaggi di errore. `$*IN` è lo standard input. `say` e `print` scrivono su `$*OUT`. Vuoi mandare del testo allo standard error? Allora chiama il metodo su `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Queste variabili sono dinamiche. Quindi, dentro un blocco, puoi mandare `$*OUT` in un posto nuovo. Allora il codice che chiami nel blocco stampa lì. Non cambi per niente quel codice.

## Il programma e il suo processo

Alcune variabili ti dicono qualcosa sul programma che sta girando adesso:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

I loro valori sono diversi ogni volta che esegui il programma. Quindi qui non mostriamo l'output.

## Riga di comando e ambiente

Raku mette gli argomenti e l'ambiente in due contenitori. Sono pronti per te:

* `@*ARGS` — la lista degli argomenti da riga di comando; una subroutine `MAIN` riceve gli stessi argomenti
* `%*ENV` — le variabili d'ambiente, in un hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Queste variabili predefinite ti risparmiano lavoro. Non devi prendere tu queste informazioni. Sono dinamiche, quindi Raku le cerca nello stack delle chiamate. Così puoi sovrascrivere qualsiasi variabile predefinita `$*` per uno scope. Funziona proprio come una tua variabile `$*`.

Queste sono tutte variabili dinamiche. Ma Raku ha anche variabili predefinite con il twigil `?`. Sono `$?FILE` e `$?LINE`. Il compilatore imposta i loro valori prima che il programma parta. Le hai già viste nella pagina sui [twigil](/it/advanced/special-variables/twigils).

{% include nav.html %}
