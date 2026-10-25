---
title: 'Uzante `repeat`'
---

{% include menu.html %}

Foje `while` aŭ `until` bloko tute ne ruliĝas. Tio okazas, kiam la kondiĉo estas `False` komence. Bloko `repeat` estas malsama: ĝi ĉiam ruliĝas almenaŭ unu fojon. Raku kontrolas la kondiĉon post la bloko. Vi uzas la samajn vortojn, `while` aŭ `until`, por la kontrolo.

Rigardu ĉi tiun programon.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Komence, la variablo `$x` estas `100`. La `while` kondiĉo kontrolas, ĉu `$x` estas malpli ol aŭ egala al `10`. Kun ĉi tiu valoro, la kondiĉo jam estas `False`. Sed la koda bloko tamen ruliĝas unue.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Nun ni ŝanĝu la programon kaj uzu `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Rulu ĝin kaj kontrolu, ke ĝi funkcias:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
