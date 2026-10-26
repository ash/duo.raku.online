---
title: Valoroj kaj ŝlosiloj
translations_gpt:
---

{% include menu.html %}

Ĉiu enumeracia konstanto havas kaj nomon kaj nombron. La metodo `.value` redonas la nombron, kaj `.key` redonas la nomon kiel ĉenon:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Vi ne devas uzi la aŭtomatajn nombrojn de nulo. Por mem elekti la valorojn, skribu la konstantojn kiel parojn:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Ĉi tie, la labora semajno komenciĝas ĉe unu anstataŭ ĉe nulo.

La enumeracia tipo ankaŭ povas mem listigi ĉiujn siajn konstantojn. Ĝia metodo `.enums` redonas mapon, kiu ligas ĉiun nomon al ĝia valoro:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Ĉi tiuj tri metodoj, `.value`, `.key` kaj `.enums`, lasas vin libere moviĝi. Vi povas iri de konstanto al ĝia nombro kaj de nombro reen al datumoj. Vi ankaŭ povas labori kun la tuta aro. Tio faras enumeraciojn utilaj por aferoj kiel menuoj, statoj kaj serĉtabeloj.

{% include nav.html %}
