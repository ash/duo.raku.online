---
title: Quiz — L'array `@*ARGS`
---

{% include menu.html %}

Esegui il seguente programma diverse volte. Trova le risposte corrette per ogni esecuzione.

Il programma è salvato nel file `t.raku`. Ecco il suo codice:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Il programma viene eseguito così:

```console
$ raku t.raku hello world
```

Quale valore stampa ogni riga di codice?

{:.quiz-select}
2 | `say @*ARGS.elems;` stampa&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` stampa&nbsp; (: hello, world, hello world :)

## 2

Il programma viene eseguito così:

```console
$ raku t.raku "hello world"
```

Quali valori stampa?

{:.quiz-select}
1 | `say @*ARGS.elems;` stampa&nbsp; (: 1, 2 :) | La stringa quotata è un singolo argomento.
hello world | `say @*ARGS[0];` stampa&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Il programma viene eseguito così:

```console
$ raku t.raku "hello" "world"
```

Cosa stampa?

{:.quiz-select}
2 | `say @*ARGS.elems;` stampa&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` stampa&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | Le virgolette dalla shell non sono incluse nel valore dell'argomento.

{% include quiz.html %}

{% include nav.html %}
