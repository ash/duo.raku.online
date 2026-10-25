---
title: 'Uzante `repeat`'
---

{% include menu.html %}

La `while` kaj `until` blokoj eble neniam ruliĝos, se la kondiĉo estas `False` komence. La `repeat` bloko, male, ĉiam ruliĝas almenaŭ unu fojon. La kondiĉo estas kontrolata post la koda bloko. Por la kontrolo, vi uzas la samajn vortojn `while` aŭ `until`.

Rigardu ĉi tiun programon.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

La variablo `$x` komence havas la valoron `100`, kaj la `while` kondiĉo kontrolas, ĉu `$x` estas malpli ol aŭ egala al `10`. Kun ĉi tiu valoro, la kondiĉo jam estas `False`, sed la koda bloko tamen unue ruliĝas unu fojon.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Ni ŝanĝu la programon, por ke ĝi uzu `until` anstataŭe.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Rulu ĝin por kontroli, ke ĝi funkcias kiel atendite:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
