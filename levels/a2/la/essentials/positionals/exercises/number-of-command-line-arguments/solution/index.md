---
title: 'Solutio: Numerus argumentorum lineae mandati'
translations_gpt:
---

{% include menu.html %}

Numerum argumentorum iterum ex `@*ARGS.elems` accipimus. Sed hac vice eum non solum imprimimus. Plus cum eo agere debemus. Serva numerum in variabili. Deinde verbum rectum per operatorem ternarium elige:

## Codex

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Inveni codicem fontem in archivo [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Exitus

Proba tres casus notabiles: nullum argumentum, unum argumentum et multa argumenta. Solus secundus casus forma singulari utitur, `argument`.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
