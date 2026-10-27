---
title: "L'ambiente"
translations_gpt:
---

{% include menu.html %}

Ogni programma parte con un insieme di _variabili d'ambiente_. Ognuna è un valore con un nome. Alcuni esempi sono `HOME`, `PATH` e `USER`. Il sistema operativo dà questi valori al programma. In Raku li trovi nell'hash dinamico `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Leggi una variabile d'ambiente con il suo nome. Usa il nome come chiave in `%*ENV`. `%*ENV` è un normale hash. Così puoi anche controllare se una variabile è impostata. Puoi perfino cambiarla per i programmi che avvii:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Puoi impostare una chiave in `%*ENV`. Allora la chiave diventa parte dell'ambiente. Ora avvii un programma con `run` o `shell`. Questo programma è un figlio del tuo programma. Ogni programma figlio riceve lo stesso ambiente. Così passi delle impostazioni a un programma figlio:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Il tuo programma imposta la variabile *prima* di avviare il figlio. Qui `run` avvia una shell come figlio. Una shell è un programma che legge comandi e li esegue. Questa shell ha già `GREETING` nel suo ambiente. Quindi può stampare di nuovo il valore con `echo`. Puoi impostare qualsiasi variabile in questo modo. Poi la variabile arriva a ogni programma che avvii dopo.

Il twigil `*` ti dice che `%*ENV` è una variabile dinamica. Un twigil è un segno dopo il sigillo. Anche `$*OUT` è una variabile dinamica. L'hai incontrata nella parte su input e output. Altre variabili con l'asterisco ti parlano del programma in esecuzione. `@*ARGS` contiene gli argomenti della riga di comando. Sono i valori dopo il nome del programma nel comando. `$*PROGRAM-NAME` è il nome dello script stesso. Insieme, queste variabili dicono a un programma come è stato avviato.

{% include nav.html %}
