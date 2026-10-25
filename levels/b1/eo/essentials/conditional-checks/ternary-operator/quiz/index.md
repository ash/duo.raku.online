---
title: Kvizo — Ternara operatoro
---

{% include menu.html %}

Plenigu la mankojn en la programo:

{:.quiz-code}
. | my $color = prompt &apos;Kia koloro ĝi estas? &apos;;
?? | say $color eq &apos;blua&apos; ␣␣
!! | &nbsp;&nbsp;&nbsp;&nbsp;&apos;Ĉi tio estas ĉielo!&apos; ␣␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;&apos;Mi bezonas pli da informo.&apos;;

{% include quiz.html %}

## Komento

Unu eraro kun la ternara operatoro en Raku estas la plej ofta. La Rakudo-kompililo havas specialan erarmesaĝon por ĝi.

    ===PARDONU!=== Eraro dum kompilado de /Users/ash/raku-course/t.raku
    Neaprobita uzo de ? kaj : por la ternara kondiĉa operatoro. En
    Raku bonvolu uzi: ?? kaj !!.
    ĉe /Users/ash/raku-course/t.raku:2
    ------> say $color eq 'blua' ?⏏ 'Ĉi tio estas ĉielo!' : 'Mi bezonas pli da informa

{% include nav.html %}
