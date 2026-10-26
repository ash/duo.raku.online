---
title: Dinamikaj variabloj
translations_gpt:
---

{% include menu.html %}

_Dinamika_ variablo havas la tvigilon `*`. Leksika variablo estas videbla nur en la bloko, kie vi deklaras ĝin. Dinamika variablo estas alia: Raku trovas ĝin, serĉante **eksteren tra la voka stako**. Ĝi traserĉas la kodon, kiu vokis la nunan kodon. Ne gravas, kie tiu kodo estas difinita.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

La subrutino `greet` nek deklaras `$*greeting`, nek ricevas ĝin kiel argumenton. Sed ĝi tamen povas vidi ĝin. Tio estas ĉar la variablo estas dinamika. Krome, `greet` estis vokita el loko, kie la variablo estas en amplekso.

Ĉi tiu ekzemplo funkcius ankaŭ kun simpla tutmonda skalara variablo `$greeting`. Sed la sekva ekzemplo montras, kio faras dinamikajn variablojn specialaj.

La serĉado sekvas la vokan stakon. Do pli proksima deklaro **anstataŭigas** pli malproksiman, dum ĝia bloko ruliĝas:

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

La sama `show` presas `outer` la unuan fojon. Ĝi presas `inner`, kiam ĝi estas vokita el ene de la bloko, kiu denove deklaris `$*level`. Tio estas _dinamika ampleksado_. La enkonstruitaj `$*OUT`, `$*IN` kaj `$*ERR` de Raku funkcias same. Vi povas provizore redirekti eligon, se vi denove deklaras `$*OUT` en bloko. Tiam ĉiu rutino, kiun vi vokas ene de la bloko, vidas la novan valoron. Dinamikaj variabloj estas bonegaj por doni kuntekston al vokita kodo sen eksplicita argumento.

{% include nav.html %}
