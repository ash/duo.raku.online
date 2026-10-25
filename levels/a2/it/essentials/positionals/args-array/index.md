---
title: L'array `@*ARGS`
---

{% include menu.html %}

Ora conosci gli array. Allora vediamo un array incorporato, `@*ARGS`. Guarda il `*` nel suo nome. È un secondo sigillo, o _twigil_. Vediamo altri twigil più avanti. Ma per ora, vediamo a cosa serve questo array speciale. Contiene gli argomenti del programma. Il programma li riceve dalla linea di comando.

Guarda questa esecuzione di un programma:

```console
$ raku run.raku alpha beta
```

Il programma `run.raku` riceve due parametri: `alpha` e `beta`. Puoi leggerli da `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Questo programma stampa il numero dei suoi argomenti. Poi stampa gli argomenti:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Puoi anche eseguire il programma come file eseguibile. Per questo non devi cambiare il programma:

```console
$ ./run.raku alpha beta
```

In questo caso, il programma [ha bisogno di uno shebang](/it/essentials/running-programs/from-command-line). Ma la cosa più importante è questa. Gli indici di `@*ARGS` iniziano comunque da `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
