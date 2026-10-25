---
title: 'Uzante `repeat`'
---

{% include menu.html %}

Buklo `while` aŭ `until` eble tute ne ruliĝas. Tio okazas, kiam la kondiĉo estas `False` komence. Bloko `repeat` estas malsama. Ĝi ĉiam ruliĝas almenaŭ unu fojon. Raku kontrolas la kondiĉon post la bloko. Vi uzas la samajn vortojn por la kontrolo: `while` aŭ `until`.

Rigardu ĉi tiun programon.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Komence, la variablo `$x` estas `100`. La `while` kondiĉo kontrolas, ĉu `$x` estas `10` aŭ malpli. Do la kondiĉo jam estas `False`. Sed la bloko de kodo tamen ruliĝas unu fojon.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Nun ni skribu la programon per `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Rulu ĝin kaj kontrolu la rezulton:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
