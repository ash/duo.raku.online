---
title: Booleaj operacioj kun aliaj tipoj
---

{% include menu.html %}

En la sekva sekcio, ni parolos pri [konvertado de datumoj el unu tipo al alia](/eo/essentials/coercion). Sed antaŭ tio, gravas montri unu trajton de Raku. Vi povas uzi Booleajn operaciojn kun ĉenoj aŭ entjeroj. En tiu kazo, la valoroj ne estas konvertataj al Booleaj. Ankaŭ la rezulto ne estas Boolea valoro. Rigardu ĉi tiujn ekzemplojn:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Ni legu la regulojn 📖 [el la dokumentaro](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` redonas la unuan argumenton, kiu estas Falsa kiel Boolea valoro. Se ne ekzistas tia, ĝi redonas la lastan argumenton.
* `||` redonas la unuan argumenton, kiu estas Vera kiel Boolea valoro. Se ne ekzistas tia, ĝi redonas la lastan argumenton.
* `^^` redonas la Veran argumenton, se estas ekzakte unu. Se ĉiuj argumentoj estas Falsaj, ĝi redonas la lastan. Se pli ol unu argumento estas Vera, ĝi redonas `Nil`.

Notu, ke ni ĵus renkontis `Nil`, kiu estas ‘nul’ valoro.

{% include nav.html %}
