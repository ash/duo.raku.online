---
title: 'Soluzione: Numero di argomenti della riga di comando'
translations_gpt:
---

{% include menu.html %}

Il numero di argomenti arriva sempre da `@*ARGS.elems`. Ma questa volta dobbiamo farci qualcosa, non solo stamparlo. Salva il numero in una variabile. Poi scegli la parola giusta con un operatore ternario:

## Codice

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Trova il programma nel file [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Output

Prova i tre casi interessanti: nessun argomento, esattamente uno e molti. Solo il secondo caso usa la forma singolare.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
