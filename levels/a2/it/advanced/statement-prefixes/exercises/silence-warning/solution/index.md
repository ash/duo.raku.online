---
title: 'Solution: Silenziare un avviso'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Il codice sorgente è disponibile nel file [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Output

```
Hello, !
```

## Commenti

1. Qui il `$name` non definito entra nella stringa. Di solito questo dà un avviso: “use of uninitialized value”. Ma l'espressione è dentro `quietly`. Così l'avviso resta nascosto. Il programma stampa solo il saluto.

1. Come `do`, `quietly` restituisce il valore del suo blocco. Così il programma salva la nuova stringa in `$greeting`. Il nome manca, quindi nella stringa c'è uno spazio vuoto.

1. `quietly` nasconde solo l'avviso. Il valore resta non definito. Forse volete *gestire* il valore mancante. Allora date un valore predefinito con l'operatore defined-or `//`. `$name // 'friend'` dà `'friend'` quando `$name` non è definito. Così `"Hello, " ~ ($name // 'friend') ~ "!"` stampa `Hello, friend!`. Non c'è nessun avviso.

{% include nav.html %}
