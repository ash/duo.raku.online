---
title: Variabla interpolado
---

{% include menu.html %}

En la antaŭaj sekcioj, kelkaj ŝnuroj estis en unuopaj citiloj kaj kelkaj en duoblaj citiloj. Ĉu vi rimarkis tion? Tiu diferenco estas tre grava.

Kompreneble, duoblaj citiloj faciligas meti unuopan citilon en ŝnuron:

```raku
say "O'Henry";
```

Cetere, ĝusta apostrofo estas ankoraŭ pli bona ol unuopa citilo. Finfine, [Raku estas bona pri Unikodo](../../on-unicode).

```raku
say 'O’Henry';
```

Sed la vera forto de duoblaj citiloj estas, ke ili povas _interpoli_ variablojn. Kiel ni baldaŭ vidos, ili eĉ povas ruli kodon! Rigardu ĉi tiun programon:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

Kiel vi verŝajne atendas, la programo presas `Hello, Karl!`. La valoro de la variablo anstataŭis la nomon `$name`, kune kun ĝia sigelo `$`.

La interpolita valoro estas la valoro, kiun la variablo havas en la momento de interpolado. Do se vi ŝanĝas `$name` kaj interpolas ĝin denove, la nova valoro estas uzata. Ni testu ĝin:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

Ĉi-foje, la sama ŝnuro produktas malsamajn mesaĝojn:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
