---
title: 'Uzante `repeat`'
---

{% include menu.html %}

Bloko `while` aŭ `until` eble neniam ruliĝos, se la kondiĉo estas `False` de la komenco. Bloko `repeat`, male, ĉiam ruliĝas almenaŭ unu fojon. Ĝia kondiĉo estas kontrolata post la bloko. Por la kontrolo, vi uzas la samajn vortojn, `while` aŭ `until`.

Ekrigardu ĉi tiun programon.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

La variablo `$x` komence havas la valoron `100`. La `while` kondiĉo kontrolas, ĉu `$x` estas malpli ol aŭ egala al `10`. Kun ĉi tiu valoro, la kondiĉo jam estas `False`, sed la bloko tamen unue ruliĝas unu fojon.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Nun ni ŝanĝu la programon, por ke ĝi uzu `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Rulu ĝin por kontroli, ke ĝi funkcias tiel, kiel vi atendas:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
