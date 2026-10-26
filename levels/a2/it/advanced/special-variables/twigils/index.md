---
title: Twigil
---

{% include menu.html %}

Un _twigil_ è un carattere. Sta tra il sigillo e il nome di una variabile. Non cambia il nome. Cambia come funziona la variabile. Cambia anche come Raku la trova. Questi sono i twigil comuni:

* `*` — una variabile **dinamica**, per esempio `$*OUT`; Raku la trova nello stack delle chiamate
* `?` — un valore **in fase di compilazione**; lo imposta il compilatore, per esempio `$?FILE` e `$?LINE`
* `!` — un attributo **privato** di un oggetto, per esempio `$!balance`
* `.` — un attributo che usi tramite il suo metodo accessore, per esempio `$.name`

Ne conosci già alcuni, ma senza il nome “twigil”. `$*OUT` e `$*IN` sono dinamici. E hai visto `$!` e `$.` nella [parte sugli oggetti](/it/oop).

Il compilatore dà i valori alle variabili `?`. Lo fa quando compila il tuo programma:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Ogni twigil mostra un tipo diverso di variabile. Lo vedi subito. Quando leggi `$*foo`, sai che è dinamica. E `$?foo` è una costante in fase di compilazione. Il prossimo argomento guarda da vicino le [variabili dinamiche](/it/advanced/special-variables/dynamic-variables). Funzionano in modo molto diverso dalle variabili lessicali che conosci.

{% include nav.html %}
