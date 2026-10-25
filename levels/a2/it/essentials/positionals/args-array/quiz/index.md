---
title: Quiz — L'array `@*ARGS`
---

{% include menu.html %}

Esegui questo programma alcune volte. Trova le risposte giuste per ogni esecuzione.

Il programma è nel file `t.raku`. Ecco il suo codice:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Esegui il programma così:

```console
$ raku t.raku hello world
```

Cosa stampa ogni riga di codice?

{:.quiz-select}
2 | `say @*ARGS.elems;` stampa&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` stampa&nbsp; (: hello, world, hello world :)

## 2

Esegui il programma così:

```console
$ raku t.raku "hello world"
```

Cosa stampa il programma?

{:.quiz-select}
1 | `say @*ARGS.elems;` stampa&nbsp; (: 1, 2 :) | La stringa quotata è un singolo argomento.
hello world | `say @*ARGS[0];` stampa&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Esegui il programma così:

```console
$ raku t.raku "hello" "world"
```

Cosa stampa?

{:.quiz-select}
2 | `say @*ARGS.elems;` stampa&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` stampa&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | Le virgolette dalla shell non sono incluse nel valore dell'argomento.

{% include quiz.html %}

{% include nav.html %}
