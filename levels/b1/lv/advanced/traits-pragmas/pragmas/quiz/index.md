---
title: Viktorīna — Pragmas
translations_gpt:
---

{% include menu.html %}

Raku pragma `strict` ir ieslēgta pēc noklusējuma. Kas notiek, ja piešķirat vērtību mainīgajam, kuru nekad neesat deklarējuši, kā `$x = 42`?

{:.quiz}
1 | Tā ir kompilēšanas laika kļūda
0 | Tas klusi izveido `$x`
0 | Tas izdrukā brīdinājumu, bet izpildās
0 | Tas iestata `$x` uz `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` ir ieslēgta pēc noklusējuma. Tā pieprasa, lai jūs vispirms deklarētu katru mainīgo ar `my`. Tāpēc `$x = 42` bez `my` nekompilējas. Kļūda ir *Variable '$x' is not declared*. Ja izslēdzat pragmu ar `no strict`, piešķiršana darbojas.

</div>

{% include nav.html %}
