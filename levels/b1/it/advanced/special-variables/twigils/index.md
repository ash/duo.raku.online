---
title: Twigil
---

{% include menu.html %}

Un _twigil_ è un carattere tra il sigillo e il nome di una variabile. Non cambia il nome. Invece, cambia come si comporta la variabile e come Raku la trova. Questi sono i più comuni:

* `*` — una variabile **dinamica**, come `$*OUT`, che Raku cerca attraverso lo stack delle chiamate
* `?` — un valore **in fase di compilazione** che fornisce il compilatore, come `$?FILE` o `$?LINE`
* `!` — un attributo **privato** di un oggetto, come `$!balance`
* `.` — un attributo che raggiungi tramite il suo metodo accessore, come `$.name`

Ne hai già visti diversi, ma non li abbiamo chiamati twigil. Sono i dinamici `$*OUT` e `$*IN`, e `$!`/`$.` della [parte sugli oggetti](/it/oop).

Il compilatore riempie le variabili `?` mentre compila il tuo programma:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Ogni twigil indica a prima vista un tipo diverso di variabile. Quando leggi `$*foo`, capisci subito che è dinamica. E `$?foo` è una costante in fase di compilazione. Il prossimo argomento esamina in dettaglio le [variabili dinamiche](/it/advanced/special-variables/dynamic-variables). Si comportano in modo abbastanza diverso dalle variabili lessicali che hai usato finora.

{% include nav.html %}
