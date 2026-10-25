---
title: 'Solvo: Literumi numeron'
---

{% include menu.html %}

La programo sube havas sian propran tabelon kun nomoj de nombroj. En ĝi estas la nomoj de 0 ĝis 20. Estas ankaŭ la nomoj de la dekoj: 20, 30 kaj tiel plu. Poste estas ĉeno de kondiĉaj kontroloj. Ili elektas regulon de literumado por la nombro.

## Kodo

```raku
my $n = @*ARGS[0];

my @names = <
    zero one two three four five six seven eight nine ten
    eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty
    thirty fourty fifty sixty seventy eighty ninety >;

if $n < 20 {
    say @names[$n];
}
elsif $n % 10 { # Du-ciferaj ne-rondaj nombroj, ekz., 34
    say @names[$n / 10 + 18] ~ '-' ~ @names[$n % 10];
}
else { # Multobloj de 10, ekz., 50
    say @names[$n / 10 + 18];
}
```

🦋 Trovu la programon en la dosiero [spell-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/spell-a-number.raku).

## Ekzemplo

Rulu la programon kelkajn fojojn. Kontrolu ĉiujn tri branĉojn de `if`—`elsif`—`else`.

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
