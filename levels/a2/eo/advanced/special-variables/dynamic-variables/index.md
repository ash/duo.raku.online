---
title: Dinamikaj variabloj
translations_gpt:
---

{% include menu.html %}

_Dinamika_ variablo havas la tvigilon `*`. Normala, leksika variablo estas videbla nur en sia propra bloko. Vi deklaras ĝin en ĉi tiu bloko. Dinamika variablo estas alia. Raku serĉas ĝin **tra la voka stako**. Ĝi rigardas la kodon, kiu vokis la nunan kodon. Poste ĝi iras unu paŝon plu malantaŭen, kaj tiel plu. Ne gravas, kie la nuna kodo estas skribita.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

La subrutino `greet` ne deklaras `$*greeting`. Ĝi ne ricevas ĝin kiel argumenton. Sed ĝi tamen povas vidi ĝin. La variablo estas dinamika. Kaj la variablo estas videbla tie, kie la programo vokas `greet`.

Ĉi tiu ekzemplo funkcias ankaŭ kun simpla tutmonda skalara variablo `$greeting`. La sekva ekzemplo montras, kio estas speciala ĉe dinamikaj variabloj.

Raku serĉas la variablon tra la voka stako. Do pli proksima deklaro **anstataŭigas** pli malproksiman. Tio signifas, ke Raku uzas la pli proksiman. Tio daŭras, dum ĝia bloko ruliĝas:

```raku
my $*level = 'outer';

sub show {
    say $*level;
}

show(); # outer

{
    my $*level = 'inner';
    show(); # inner
}
```

La sama `show` presas `outer` la unuan fojon. La duan fojon, ĝi presas `inner`. Ĉi-foje la programo vokas `show` el ene de la bloko. Ĉi tiu bloko denove deklaras `$*level`. Tio estas _dinamika ampleksado_. La enkonstruitaj `$*OUT`, `$*IN` kaj `$*ERR` de Raku funkcias tiel. Ekzemple, vi povas denove deklari `$*OUT` en bloko. Tiam la eligo iras al nova loko por iom da tempo. Ĉiu rutino, kiun vi vokas en la bloko, vidas la novan valoron. Dinamikaj variabloj estas bonegaj por informoj, kiujn la vokita kodo bezonas. Vi ne devas transdoni ĉi tiujn informojn kiel argumenton.

{% include nav.html %}
