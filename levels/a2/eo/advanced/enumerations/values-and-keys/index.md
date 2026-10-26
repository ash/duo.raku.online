---
title: Valoroj kaj ŝlosiloj
translations_gpt:
---

{% include menu.html %}

Ĉiu konstanto de enumeracio havas nomon kaj nombron. La metodo `.value` donas la nombron. La metodo `.key` donas la nomon kiel ĉenon:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Raku numeras la konstantojn de nulo. Sed vi povas ŝanĝi tion. Skribu la konstantojn kiel parojn. Tiam vi mem elektas la valorojn:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Ĉi tie, la labora semajno komenciĝas de unu, ne de nulo.

La enumeracia tipo ankaŭ povas listigi ĉiujn siajn konstantojn. La metodo `.enums` redonas mapon. Mapo similas al hako. En ĉi tiu mapo, ĉiu nomo havas sian valoron:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Per `.value`, `.key` kaj `.enums`, vi povas libere moviĝi. Vi povas iri de konstanto al ĝia nombro. Vi povas iri de nombro reen al la datumoj. Kaj vi povas trairi la tutan aron. Do enumeracioj estas utilaj, ekzemple, por menuoj, statoj kaj serĉtabeloj.

{% include nav.html %}
