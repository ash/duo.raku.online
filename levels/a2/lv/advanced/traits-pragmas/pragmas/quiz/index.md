---
title: Viktorīna — Pragmas
translations_gpt:
---

{% include menu.html %}

Raku valodā pragma `strict` pēc noklusējuma ir ieslēgta. Jūs nedeklarējat mainīgo, bet piešķirat tam vērtību. Piemēram, `$x = 42`. Kas notiek?

{:.quiz}
1 | Tā ir kompilēšanas laika kļūda
0 | Tas klusi izveido `$x`
0 | Tas izdrukā brīdinājumu, bet izpildās
0 | Tas iestata `$x` uz `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` ir ieslēgta pēc noklusējuma. Ar to jums katrs mainīgais vispirms jādeklarē ar `my`. Tāpēc `$x = 42` bez `my` nekompilējas. Kļūda ir *Variable '$x' is not declared*. Ar `no strict` pragma ir izslēgta. Tad piešķiršana strādā.

</div>

{% include nav.html %}
