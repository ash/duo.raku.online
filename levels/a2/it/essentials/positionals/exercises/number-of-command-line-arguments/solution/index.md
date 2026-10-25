---
title: 'Soluzione: Numero di argomenti della riga di comando'
translations_gpt:
---

{% include menu.html %}

Prendiamo di nuovo il numero di argomenti da `@*ARGS.elems`. Ma questa volta non lo stampiamo e basta. Dobbiamo farci qualcosa di più. Salva il numero in una variabile. Poi scegli la parola giusta con un operatore ternario:

## Codice

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Trova il programma nel file [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Output

Prova tre casi interessanti: nessun argomento, un argomento e molti argomenti. Solo il secondo caso usa la forma singolare, `argument`.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
