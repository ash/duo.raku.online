---
title: Multi-funkcioj
---

{% include menu.html %}

Raku havas _multoblan sendon_ bazitan sur la funkcia subskribo. Ĝi permesas al vi krei funkciojn kun la sama nomo, sed kun malsamaj tipoj de eniraj datumoj. Uzu la deklarilon `multi` por ĉiu varianto de la funkcio.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Estas bone preterlasi `sub` post `multi`.

Kiam estas du variantoj de la sama funkcio, la kompililo faras multoblan sendon. Ĝia elekto dependas de tio, kiujn argumentojn ĝi vidas en la funkcia voko. Komparu ĉi tiujn du vokojn:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

La unua voko rulas la varianton kun entjeraj parametroj. La dua voko rulas la alian varianton, kiu atendas du ĉenojn.

## Literalaj parametroj

Interesa uzo de multi-funkcioj estas variantoj kun literalaj valoroj kiel parametroj. Rigardu la jenajn du variantojn:

```raku
multi sub f(42) {say 'Ĉi tio estas la respondo'}
multi sub f($x) {say "$x ne estas la respondo"}
```

La unua varianto ruliĝas nur, kiam vi vokas la funkcion kun ĝuste 42. En ĉiuj aliaj kazoj, Raku uzas la duan varianton. Ne gravas, en kiu ordo ĉi tiuj funkcioj estas difinitaj.

```raku
f(10); # 10 ne estas la respondo
f(42); # Ĉi tio estas la respondo
```

{% include nav.html %}
