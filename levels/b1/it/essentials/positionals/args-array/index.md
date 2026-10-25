---
title: L'array `@*ARGS`
---

{% include menu.html %}

Ora che conosci gli array, vediamo uno degli array incorporati: `@*ARGS`. Il `*` nel suo nome è un secondo sigillo, o _twigil_. Ne vedremo altri più avanti. Ma per ora, vediamo perché questo array speciale è utile. Contiene gli argomenti che il programma riceve dalla linea di comando.

Guarda la seguente esecuzione di un programma:

```console
$ raku run.raku alpha beta
```

Il programma `run.raku` riceve due parametri, `alpha` e `beta`. Nel programma puoi leggerli da `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Questo programma stampa quanti argomenti ha ricevuto, e poi gli argomenti stessi:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Nota che il programma non ha bisogno di modifiche se lo esegui come file eseguibile:

```console
$ ./run.raku alpha beta
```

In questo caso, il programma [dovrebbe avere uno shebang](/it/essentials/running-programs/from-command-line). Ma la cosa più importante è che gli indici di `@*ARGS` iniziano comunque da `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
