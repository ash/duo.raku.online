---
title: 'Solutio: Numerus argumentorum lineae mandati'
translations_gpt:
---

{% include menu.html %}

Numerus argumentorum adhuc ex `@*ARGS.elems` venit. Sed hac vice aliquid cum eo agere debemus, non solum eum imprimere. Serva numerum in variabili. Deinde verbum rectum per operatorem ternarium elige:

## Codex

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Inveni codicem fontem in archivo [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Exitus

Proba tres casus notabiles: nullum argumentum, unum tantum, et multa. Solus secundus casus forma singulari utitur.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
