---
title: Booleaj operacioj kun aliaj tipoj
---

{% include menu.html %}

La sekva sekcio temas pri [ŝanĝo de datumoj el unu tipo al alia](/eo/essentials/coercion). Sed unue, rigardu gravan trajton de Raku. Vi povas uzi Booleajn operaciojn kun ĉenoj aŭ entjeroj. Tiam Raku ne ŝanĝas la valorojn al Booleaj valoroj. Ankaŭ la rezulto ne estas Boolea valoro. Rigardu ĉi tiujn ekzemplojn:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Jen la reguloj 📖 [el la dokumentaro](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` redonas la unuan valoron, kiu estas Falsa por Raku. Se ne ekzistas tia valoro, ĝi redonas la lastan valoron.
* `||` redonas la unuan valoron, kiu estas Vera por Raku. Se ne ekzistas tia valoro, ĝi redonas la lastan valoron.
* `^^` redonas la Veran valoron, se estas nur unu Vera valoro. Se ĉiuj valoroj estas Falsaj, ĝi redonas la lastan valoron. Se pli ol unu valoro estas Vera, ĝi redonas `Nil`.

Ĉi tie ni vidas novan valoron, `Nil`. Ĝi estas ‘nul’ valoro.

{% include nav.html %}
