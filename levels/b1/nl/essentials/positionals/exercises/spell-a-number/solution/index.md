---
title: 'Solution: Schrijf een getal'
---

{% include menu.html %}

Het programma hieronder heeft een eigen array met namen van getallen. Daarin staan de namen van de getallen van 0 tot 20. Er staan ook de namen van de tientallen in: 20, 30 en zo verder. Een keten van voorwaardelijke controles stuurt het getal dan naar een van de spellingsregels.

## Code

```raku
my $n = @*ARGS[0];

my @names = <
    zero one two three four five six seven eight nine ten
    eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty
    thirty fourty fifty sixty seventy eighty ninety >;

if $n < 20 {
    say @names[$n];
}
elsif $n % 10 { # Tweecijferige niet-ronde nummers, bijv. 34
    say @names[$n / 10 + 18] ~ '-' ~ @names[$n % 10];
}
else { # Veelvouden van 10, bijv. 50
    say @names[$n / 10 + 18];
}
```

🦋 Vind het programma in het bestand [spell-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/spell-a-number.raku).

## Voorbeeld

Voer het programma een paar keer uit. Zorg dat je alle drie de takken van de `if`—`elsif`—`else`-constructie test.

```console
$ raku exercises/positionals/spell-a-number.raku 5
five

$ raku exercises/positionals/spell-a-number.raku 12
twelve

$ raku exercises/positionals/spell-a-number.raku 67
sixty-seven

$ raku exercises/positionals/spell-a-number.raku 80
eighty
```

{% include nav.html %}
