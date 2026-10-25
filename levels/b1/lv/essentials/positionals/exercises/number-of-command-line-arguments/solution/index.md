---
title: 'Risinājums: Komandrindas argumentu skaits'
translations_gpt:
---

{% include menu.html %}

Argumentu skaitu joprojām dod `@*ARGS.elems`. Bet šoreiz ar to kaut kas jāizdara, nevis tikai jāizdrukā. Saglabājiet skaitu mainīgajā. Tad ar trejdaļīgo operatoru izvēlieties pareizo vārdu:

## Kods

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Atrodiet programmu failā [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Izvade

Pārbaudiet trīs interesantos gadījumus: bez argumentiem, ar tieši vienu un ar daudziem. Tikai otrais gadījums izmanto vienskaitļa formu.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
