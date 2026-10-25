---
title: Variabla interpolado
---

{% include menu.html %}

En la lastaj sekcioj, kelkaj ŝnuroj estis en unuopaj citiloj. Aliaj ŝnuroj estis en duoblaj citiloj. Ĉu vi rimarkis tion? La diferenco estas tre grava.

Ĉu vi bezonas unuopan citilon en ŝnuro? La plej facila maniero estas uzi duoblajn citilojn, kompreneble:

```raku
say "O'Henry";
```

Cetere, vera apostrofo estas ankoraŭ pli bona ol unuopa citilo. La kialo estas, ke [Raku estas bona pri Unikodo](../../on-unicode).

```raku
say 'O’Henry';
```

Sed la vera forto de duoblaj citiloj estas io alia. Ili povas _interpoli_ variablojn. Baldaŭ ni vidos, ke ili povas ankaŭ ruli kodon! Rigardu ĉi tiun programon:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

Kiel vi povas diveni, la programo presas `Hello, Karl!`. Raku forprenas la nomon `$name`, kun la sigelo `$`. Ĝi metas la valoron de la variablo en ĝian lokon.

Raku uzas la valoron de la variablo en la momento de interpolado. Vi povas ŝanĝi la valoron de `$name`. Poste vi interpolas ĝin denove. Nun la ŝnuro ricevas la novan valoron. Ni testu ĝin:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

Ĉi-foje, la sama ŝnuro faras malsamajn mesaĝojn:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
