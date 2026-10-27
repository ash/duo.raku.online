---
title: "L'ambiente"
translations_gpt:
---

{% include menu.html %}

Ogni programma parte con un insieme di _variabili d'ambiente_. Sono valori con un nome, come `HOME`, `PATH` o `USER`, che il sistema operativo fornisce. In Raku si trovano nell'hash dinamico `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Per leggere una variabile d'ambiente, usi il suo nome come chiave in `%*ENV`. Poiché `%*ENV` è un normale hash, puoi anche controllare se una variabile è impostata. Puoi anche cambiarla per i programmi che avvii:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Quando imposti una chiave in `%*ENV`, questa diventa parte dell'ambiente. Ogni programma che poi avvii con `run` o `shell` riceve anche questo ambiente. È così che passi delle impostazioni a un programma figlio:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

La variabile viene impostata nell'ambiente del tuo programma *prima* che il figlio parta. Quindi la shell che `run` avvia ha già `GREETING` nel suo ambiente. Può stampare di nuovo il valore con `echo`. Ogni variabile che imposti in questo modo arriva a ogni programma che avvii dopo.

Il twigil `*` mostra che `%*ENV` è una variabile dinamica. Lo è anche `$*OUT`, che hai visto nella parte su input e output. Alcune altre variabili con l'asterisco descrivono il mondo del programma in esecuzione. `@*ARGS` contiene gli argomenti della riga di comando, e `$*PROGRAM-NAME` è il nome dello script stesso. Insieme aiutano un programma a capire la situazione in cui è stato avviato.

{% include nav.html %}
