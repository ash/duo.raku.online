---
title: 'Risinājums: Komandrindas argumentu skaits'
translations_gpt:
---

{% include menu.html %}

Argumentu skaitu mēs atkal iegūstam no `@*ARGS.elems`. Bet šoreiz mēs to ne tikai izdrukājam. Mums ar to jāizdara vairāk. Saglabājiet skaitu mainīgajā. Tad izvēlieties pareizo vārdu ar trejdaļīgo operatoru:

## Kods

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Atrodiet programmu failā [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Izvade

Pārbaudiet trīs interesantus gadījumus: bez argumentiem, ar vienu argumentu un ar daudziem argumentiem. Tikai otrais gadījums izmanto vienskaitļa formu `argument`.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
