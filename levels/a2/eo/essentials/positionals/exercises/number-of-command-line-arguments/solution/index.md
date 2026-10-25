---
title: 'Solvo: La nombro de komando-linio argumentoj'
translations_gpt:
---

{% include menu.html %}

Ni denove ricevas la nombron de argumentoj el `@*ARGS.elems`. Sed ĉi-foje ni ne nur presas ĝin. Ni devas fari pli per ĝi. Konservu la nombron en variablo. Poste elektu la ĝustan vorton per ternara operatoro:

## Kodo

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Trovu la programon en la dosiero [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Eligo

Testu tri interesajn kazojn: neniu argumento, unu argumento kaj multaj argumentoj. Nur la dua kazo uzas la singularan formon, `argument`.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
