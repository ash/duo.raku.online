---
title: 'Risinājums: Skaitļa izrunāšana'
---

{% include menu.html %}

Zemāk esošajai programmai ir savs masīvs ar skaitļu nosaukumiem. Tajā ir nosaukumi no 0 līdz 20. Tajā ir arī desmitu nosaukumi: 20, 30 un tā tālāk. Tad ir nosacījumu pārbaužu ķēde. Tās izvēlas skaitlim rakstības noteikumu.

## Kods

```raku
my $n = @*ARGS[0];

my @names = <
    zero one two three four five six seven eight nine ten
    eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty
    thirty fourty fifty sixty seventy eighty ninety >;

if $n < 20 {
    say @names[$n];
}
elsif $n % 10 { # Divciparu nenoapaļoti skaitļi, piem., 34
    say @names[$n / 10 + 18] ~ '-' ~ @names[$n % 10];
}
else { # Desmitu reizinājumi, piem., 50
    say @names[$n / 10 + 18];
}
```

🦋 Atrodiet programmu failā [spell-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/spell-a-number.raku).

## Piemērs

Palaidiet programmu dažas reizes. Pārbaudiet visus trīs `if`—`elsif`—`else` zarus.

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
