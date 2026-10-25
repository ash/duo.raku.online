---
title: Multi-funkcioj
---

{% include menu.html %}

Raku havas _multoblan sendon_ laŭ la subskribo de funkcio. Per ĝi, pluraj funkcioj povas havi la saman nomon. Sed ili prenas malsamajn tipojn de eniraj datumoj. Skribu la deklarilon `multi` antaŭ ĉiu varianto de la funkcio.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Vi povas preterlasi `sub` post `multi`.

Ĉi tie, la sama funkcio havas du variantojn. La kompililo rigardas la argumentojn en ĉiu voko. Poste ĝi elektas la ĝustan varianton. Ĉi tio estas multobla sendo. Komparu ĉi tiujn du vokojn:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

La unua voko rulas la varianton kun entjeraj parametroj. La dua voko rulas la duan varianton. Tiu varianto atendas du ĉenojn.

## Literalaj parametroj

Jen interesa kazo. Varianto povas havi literalan valoron kiel parametron. Literalo estas valoro en la kodo, kiel `42`. Rigardu ĉi tiujn du variantojn:

```raku
multi sub f(42) {say 'Ĉi tio estas la respondo'}
multi sub f($x) {say "$x ne estas la respondo"}
```

Raku rulas la unuan varianton nur, kiam la argumento estas ĝuste 42. En ĉiuj aliaj kazoj, Raku rulas la duan varianton. La ordo de la du difinoj ne gravas.

```raku
f(10); # 10 ne estas la respondo
f(42); # Ĉi tio estas la respondo
```

{% include nav.html %}
