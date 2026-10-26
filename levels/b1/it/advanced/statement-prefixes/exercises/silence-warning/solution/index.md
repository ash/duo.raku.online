---
title: 'Solution: Silenziare un avviso'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Mettere il `$name` non definito nella stringa normalmente causa un avviso “use of uninitialized value”. Con `quietly` intorno all'espressione, l'avviso viene nascosto, quindi viene stampato solo il saluto.

1. Come `do`, `quietly` restituisce il valore del suo blocco. Quindi la stringa finita viene salvata in `$greeting`. Il nome che manca lascia uno spazio vuoto nella stringa.

1. `quietly` nasconde solo l'avviso, e il valore resta non definito. Se invece volete *gestire* il valore mancante, date un valore predefinito. Usate per questo l'operatore defined-or `//`. `$name // 'friend'` dà `'friend'` quando `$name` non è definito. Così `"Hello, " ~ ($name // 'friend') ~ "!"` stampa `Hello, friend!` senza nessun avviso.

{% include nav.html %}
